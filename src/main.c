#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>
#include <sys/ioctl.h>
int main() {
    uint8_t *p = (uint8_t*) malloc(8);
    if (!p) {
        printf("malloc fail\n");
        return -1;
    }
    memset(p, 0, 8);

    int fd = open("/dev/random", O_RDONLY);
    printf("fd=%d\n", fd);
    if (fd >= 0) {
        ssize_t ret = read(fd, p, 8);
        printf("ret=%ld\n", ret);
        if (ret == 8) {
            printf("%#x %#x %#x %#x %#x %#x %#x %#x\n",
                    *(p + 0), *(p + 1), *(p + 2), *(p + 3),
                    *(p + 4), *(p + 5), *(p + 6), *(p + 7));
        }
        close(fd);
    }
    free(p);

    if (fd = open("/dev/random", O_RDONLY) < 0) {
        perror("open");
        return 1;
    }
    int n = 16;
    if (ioctl(fd, FIONREAD, &n) < 0) { //file descriptor, call, unsigned int
        perror("ioctl");
        return 1;
    }
    printf("%d bytes available for reading.\n", n);

    return 0;
}
