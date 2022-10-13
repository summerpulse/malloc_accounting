#define _GNU_SOURCE
#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <errno.h>
#include <unistd.h>
#include <linux/random.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

/*
#include <execinfo.h>
#include <errno.h>
#include <time.h>
#include "osal.h"
#include "utils_dbglog.h"
#include "osal_log.h"
#include "malloc_accounting.h"
#define __builtin_expect(a, b) (a)
#define unlikely(x) __builtin_expect((x), 0)
#define likely(x) __builtin_expect((x), 1)
static struct rb_root malloc_tree = RB_ROOT;
static pthread_mutex_t gLock = PTHREAD_MUTEX_INITIALIZER;

static void sighandler(int signum)
{
    signal(signum, SIG_IGN);
    printf("dumping malloc_tree\n");
    struct rb_node *node;
    pthread_mutex_lock(&gLock);
    char filename[256] = {0};
    int record_counter = 0;
    sprintf(filename, "/tmp/pid%d_T%ld_malloc_tree.txt", getpid(), time(NULL));
    FILE *fp = fopen(filename, "w");

    if (!fp) {
        printf("create %s failed: %s\n", filename, strerror(errno));
        return;
    }

    for (node = rb_first(&malloc_tree); node; node = rb_next(node)) {
        //printf("vaddr=%p\n", (void *)(rb_entry(node, struct mynode, node)->vaddr));
        fprintf(fp, "{\"vaddr\":\"%p\", \"backtrace\":\"%#lx:%#lx:%#lx:%#lx:%#lx\", \"size\":%d},\n",
                (void *)(rb_entry(node, malloc_record, node)->vaddr),
                (rb_entry(node, malloc_record, node)->backtrace[0]),
                (rb_entry(node, malloc_record, node)->backtrace[1]),
                (rb_entry(node, malloc_record, node)->backtrace[2]),
                (rb_entry(node, malloc_record, node)->backtrace[3]),
                (rb_entry(node, malloc_record, node)->backtrace[4]),
                rb_entry(node, malloc_record, node)->size);
        record_counter++;
    }
    fclose(fp);
    printf("%d record dump to %s\n", record_counter, filename);
    pthread_mutex_unlock(&gLock);
    signal(SIGUSR1, sighandler);
}

int a (){
	
	signal(SIGUSR1, sighandler);
    ret                     = malloc(size);
    record                  = (malloc_record *)malloc(sizeof(malloc_record));

    if (record) {
        record->vaddr       = (unsigned long)ret;
        record->size        = size;

        nptrs = backtrace(buffer, 100);

        if (nptrs > 5)
            nptrs = 5;

        for (int j = 0; j < nptrs; j++)
            record->backtrace[j] = (unsigned long)buffer[j];

        pthread_mutex_lock(&gLock);
        insert_record(&malloc_tree, record);
        pthread_mutex_unlock(&gLock);
    }
}
*/
int main() {
    int fd;
    
    uint8_t *p = (uint8_t*) malloc(8);
    if (!p) {
        printf("malloc fail\n");
        return -1;
    }
    memset(p, 0, 8);

    fd = open("test.txt", O_RDONLY);
    printf("fd=%d\n", fd);
    if (fd >= 0) {
        ssize_t ret = read(fd, p, 8);
        printf("ret=%ld\n", ret);
        if (ret == 8) {
            printf("%#x %#x %#x %#x %#x %#x %#x %#x\n",
                    *(p + 0), *(p + 1), *(p + 2), *(p + 3),
                    *(p + 4), *(p + 5), *(p + 6), *(p + 7));
        }
        //close(fd);
    }
    free(p);
	

    //if (fd = open("/dev/random", O_RDONLY) < 0) {
    //    perror("open");
    //    return 1;
    //}
    int n = 16;
	printf("open /dev/random gets %d\n", fd);
	
	/*
    if (fcntl(fd, i, filePath) != -1)
    {
        printf("fcntl with %d get:  %s\n", i, filePath);
    } else
		printf("fcntl with %d fail: %s\n", i, strerror(errno));
	
	int entropy;
	if(ioctl(fd, RNDGETENTCNT, &entropy)<0) {
		perror("ioctl1");
        return 1;
	} else
		printf("entropy=%#x\n", entropy);
	*/
    if (ioctl(fd, FIONREAD, &n) < 0) { //file descriptor, call, unsigned int
        perror("ioctl2");
        return 1;
    }
    printf("%d bytes available for reading.\n", n);

	while (1) {
		usleep(100 * 1000);
	}
    return 0;
}
