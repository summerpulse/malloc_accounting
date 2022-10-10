#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>
#include <sys/mman.h>

static void* (*real_malloc)(size_t)         = NULL;

static void init()
{
    real_malloc  = dlsym(RTLD_NEXT, "malloc");
    if (!real_malloc) {
        fprintf(stderr, "unable to get malloc symbol!\n");
        exit(1);
    }
    fprintf(stderr, "malloc_wrapper init done\n");
}

void *malloc(size_t size)
{
    if (!real_malloc) {
        init();
    }
    void *ret = real_malloc(size);
    fprintf(stderr, "using wrapped malloc: size = %ld, pointer = %p\n", size, ret);

    return ret;
}
