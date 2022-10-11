#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
//#include <sys/limits.h>
//#include <fcntl.h>
//int open(const char *pathname, int flags);
//int open(const char *pathname, int flags, mode_t mode);
//int creat(const char *pathname, mode_t mode);
//int openat(int dirfd, const char *pathname, int flags);
//int openat(int dirfd, const char *pathname, int flags, mode_t mode);

static void* (*real_malloc)( size_t) = NULL;
static int (*real_open)(const char *pathname, int flags) = NULL;
static int (*real_open3)(const char *pathname, int flags, mode_t mode) = NULL;
static int (*real_close)(int fd) = NULL;
static ssize_t (*real_read)(int fd, void *buf, size_t count) = NULL;
static ssize_t (*real_write)(int fd, const void *buf, size_t count) = NULL;
static int (*real_ioctl)(int fd, unsigned long request, char *argp) = NULL;

static void init_malloc() {
    real_malloc = dlsym(RTLD_NEXT, "malloc");
    if (!real_malloc) {
        fprintf(stderr, "unable to get malloc symbol!\n");
        exit(1);
    }
    fprintf(stderr, "real_malloc init done\n");
}
static void init_open() {
    real_open = dlsym(RTLD_NEXT, "open");
    if (!real_open) {
        fprintf(stderr, "unable to get open symbol!\n");
        exit(1);
    }
    fprintf(stderr, "real_open init done\n");
}
static void init_close() {
    real_close = dlsym(RTLD_NEXT, "close");
    if (!real_close) {
        fprintf(stderr, "unable to get close symbol!\n");
        exit(1);
    }
    fprintf(stderr, "init real_close done\n");
}
static void init_read() {
    real_read = dlsym(RTLD_NEXT, "read");
    if (!real_read) {
        fprintf(stderr, "unable to get read symbol!\n");
        exit(1);
    }
    fprintf(stderr, "real_read init done\n");
}
static void init_write() {
    real_write = dlsym(RTLD_NEXT, "write");
    if (!real_write) {
        fprintf(stderr, "unable to get write symbol!\n");
        exit(1);
    }
    fprintf(stderr, "real_write init done\n");
}
static void init_ioctl() {
    real_ioctl = dlsym(RTLD_NEXT, "ioctl");
    if (!real_ioctl) {
        fprintf(stderr, "unable to get ioctl symbol!\n");
        exit(1);
    }
    fprintf(stderr, "real_ioctl init done\n");
}
/***********************************************************************/
void* malloc(size_t size) {
    if (!real_malloc) {
        init_malloc();
    }
    void *ret = real_malloc(size);
    fprintf(stderr, "using wrapped malloc: size = %ld, pointer = %p\n", size, ret);

    return ret;
}
int open(const char *pathname, int flags) {
    if (!real_open) {
        init_open();
    }
    printf("call my open pathname is %s, flags=%#x\n", pathname, flags);
    return real_open(pathname, flags);
}
int close(int fd) {
    if (!real_close) {
        init_close();
    }
    printf("call my close, fd=%d\n", fd);
    return real_close(fd);
}
int read(int fd, void *buf, size_t count) {
    if (!real_read) {
        init_read();
    }
    printf("call my read, fd=%d, buf=%p, count=%ld\n", fd, buf, count);
    return real_read(fd, buf, count);
}
int write(int fd, const void *buf, size_t count) {
    if (!real_write) {
        init_write();
    }
    printf("call my write, fd=%d, buf=%p, count=%ld\n", fd, buf, count);
    return real_write(fd, buf, count);
}
int ioctl(int fd, unsigned long request, char *argp) {
    if (!real_ioctl) {
        init_ioctl();
    }

    char filePath[256];
    if (fcntl(fd, /*F_GETPATH*/1, filePath) != -1)
    {
        // do something with the file path
    }

    printf("call my ioctl, fd=%d, request=%#lx, argp=%p\n", fd, request, argp);
    return real_ioctl(fd, request, argp);
}
