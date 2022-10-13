#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include <libunwind.h>
//#include <sys/limits.h>
//#include <fcntl.h>
//int open(const char *pathname, int flags);
//int open(const char *pathname, int flags, mode_t mode);
//int creat(const char *pathname, mode_t mode);
//int openat(int dirfd, const char *pathname, int flags);
//int openat(int dirfd, const char *pathname, int flags, mode_t mode);
#define logline(fmt, ...) fprintf(stderr, "[%s:%d] " fmt "\n", __FUNCTION__, __LINE__, ##__VA_ARGS__)
static void* (*real_malloc)( size_t) = NULL;
static int (*real_open)(const char *pathname, int flags) = NULL;
static int (*real_open3)(const char *pathname, int flags, mode_t mode) = NULL;
static int (*real_close)(int fd) = NULL;
static ssize_t (*real_read)(int fd, void *buf, size_t count) = NULL;
static ssize_t (*real_write)(int fd, const void *buf, size_t count) = NULL;
static int (*real_ioctl)(int fd, unsigned long request, char *argp) = NULL;

char buf[512], name[256];
unw_cursor_t cursor;
unw_context_t uc;
int verbose;
int num_errors;
static void do_backtrace(void) {
    unw_word_t ip, sp, off;
    unw_proc_info_t pi;
    int ret;
	verbose = 1;
	
    if (verbose)
        logline("\texplicit backtrace:\n");

	logline();
    unw_getcontext(&uc);
	logline();
	int a = unw_init_local(&cursor, &uc);
	logline();
    if (a < 0) {
        logline("unw_init_local failed!\n");
		return -1;
	}

    do {
		logline();
        unw_get_reg(&cursor, UNW_REG_IP, &ip);
		logline();
        unw_get_reg(&cursor, UNW_REG_SP, &sp);
		logline();
        buf[0] = '\0';
		logline();
		int a= unw_get_proc_name(&cursor, name, sizeof(name), &off);
		logline();
        if (a == 0) {
			logline();
            if (off)
                snprintf(buf, sizeof(buf), "<%s+0x%lx>", name, (long) off);
            else
                snprintf(buf, sizeof(buf), "<%s>", name);
			logline();
        }
		
		logline();

        if (verbose) {
            logline("%016lx %-32s (sp=%016lx)\n", (long) ip, buf, (long) sp);
			logline();
            if (unw_get_proc_info(&cursor, &pi) == 0) {
                logline("\tproc=0x%lx-0x%lx\n\thandler=0x%lx lsda=0x%lx gp=0x%lx", (long) pi.start_ip, (long) pi.end_ip,
                        (long) pi.handler, (long) pi.lsda, (long) pi.gp);
            }

#if UNW_TARGET_IA64
            {
                unw_word_t bsp;
                unw_get_reg (&cursor, UNW_IA64_BSP, &bsp);
                logline (" bsp=%lx", bsp);
            }
#endif
            logline("\n");
        }

        ret = unw_step(&cursor);
        if (ret < 0) {
            unw_get_reg(&cursor, UNW_REG_IP, &ip);
            logline("FAILURE: unw_step() returned %d for ip=%lx\n", ret, (long) ip);
            ++num_errors;
        }
    } while (ret > 0);

    {
        void *buffer[20];
        int i, n;

        if (verbose)
            logline("\n\tvia backtrace():\n");
        n = backtrace(buffer, 20);
        if (verbose)
            for (i = 0; i < n; ++i)
                logline("[%d] ip=%p\n", i, buffer[i]);
    }
}

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
	#define O_RDONLY 00000000
	int fd=open("/dev/urandom", O_RDONLY);
    do_backtrace();
    return ret;
}
int open(const char *pathname, int flags) {
    if (!real_open) {
        init_open();
    }
    //logline("call my open pathname is %s, flags=%#x\n", pathname, flags);
	/*
	char filePath[256] = {0};
	char realPath[256] = {0};

	sprintf(filePath, "/proc/%d/fd/%d", getpid(), fd);
	ssize_t a=readlink(filePath, realPath, 256);
	*/

	int ret_fd = real_open(pathname, flags);
	if (strncmp(pathname, "/dev/mmz_userdev") == 0) {
		logline("tid:%d someone is opening mmz, fd=%d\n", gettid(), ret_fd);
		//my_bt();
	}
    return ret_fd;
}
int close(int fd) {
    if (!real_close) {
        init_close();
    }
    //logline("call my close, fd=%d\n", fd);
	
    char filePath[256] = {0};
	char realPath[256] = {0};

	sprintf(filePath, "/proc/%d/fd/%d", getpid(), fd);
	ssize_t a=readlink(filePath, realPath, 256);
	
	if (strncmp(realPath, "/dev/mmz_userdev") == 0) {
		logline("tid:%d someone is closing mmz, fd=%d\n", gettid(), fd);
		//do_backtrace();
		//while(1) {
		//	usleep(1000* 1000);
		//}
	}
	
    return real_close(fd);
}
int read(int fd, void *buf, size_t count) {
    if (!real_read) {
        init_read();
    }
    //logline("call my read, fd=%d, buf=%p, count=%ld\n", fd, buf, count);
    return real_read(fd, buf, count);
}
char *strerror(int errnum);
int write(int fd, const void *buf, size_t count) {
    if (!real_write) {
        init_write();
    }
    //logline("call my write, fd=%d, buf=%p, count=%ld\n", fd, buf, count);
    return real_write(fd, buf, count);
}
int ioctl(int fd, unsigned long request, char *argp) {
    if (!real_ioctl) {
        init_ioctl();
    }
	/*
	char filePath[256] = {0};
	char realPath[256] = {0};

	sprintf(filePath, "/proc/%d/fd/%d", getpid(), fd);
	ssize_t a=readlink(filePath, realPath, 256);
	logline("call my ioctl: ret:%d, realPath=%s\n", a, realPath);
	
	if (memncmp(realPath, "/dev/mmz_userdev") == 0) {
		logline("someone is ioctling mmz\n");
	}
	*/
    //logline("call my ioctl, fd=%d, request=%#lx, argp=%p\n", fd, request, argp);
    return real_ioctl(fd, request, argp);
}
