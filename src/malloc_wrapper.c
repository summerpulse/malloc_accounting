#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>

static void*   (*real_malloc)(size_t)                                 = NULL;
static int     (*real_open)(const char *pathname, int flags)          = NULL;
static int     (*real_close)(int fd)                                  = NULL;
static ssize_t (*real_read)(int fd, void *buf, size_t count)          = NULL;
static ssize_t (*real_write)(int fd, const void *buf, size_t count)         = NULL;
static int     (*real_ioctl)(int fd, unsigned long request, ...)         = NULL;

static void init()
{
    real_malloc  = dlsym(RTLD_NEXT, "malloc");
    if (!real_malloc) {
        fprintf(stderr, "unable to get malloc symbol!\n");
        exit(1);
    }
    fprintf(stderr, "malloc_wrapper init done\n");
}
static void init_open()
{
    real_open= dlsym(RTLD_NEXT, "open");
    if (!real_open) {
        fprintf(stderr, "unable to get open symbol!\n");
        exit(1);
    }
    fprintf(stderr, "open_wrapper init done\n");
}
/***********************************************************************/
void *malloc(size_t size)
{
    if (!real_malloc) {
        init();
    }
    void *ret = real_malloc(size);
    fprintf(stderr, "using wrapped malloc: size = %ld, pointer = %p\n", size, ret);

    return ret;
}
int open(const char *pathname, int flags) {
    if (!real_open) {
        init_open();
    }
    printf("fucking pathname is %s, flags=%#x\n", pathname, flags);
	return real_open(pathname, flags);    
}
