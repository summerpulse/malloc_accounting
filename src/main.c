#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
int main()
{
    char* p = (char*)malloc(16);
    free(p);
	int fd = open("/dev/zero", O_RDONLY);
    printf("fd=%d\n", fd);
    return 0;
}
