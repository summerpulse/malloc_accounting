#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include "wrap_symbol.h"
#include "xx.h"

int main()
{
	printf("before call do_malloc\n");
	do_malloc();
	printf("after  call do_malloc\n");
	fprintf(stdout, "===== test start =====\n");

	char* p1 = (char*)malloc(4);
	fprintf(stdout, "===== test mid =====\n");
	free(p1);

	foo();

	//int* p2 = new int;
	//delete p2;

	fprintf(stdout, "===== test finish =====\n");
	char cmd[256]={0};
	sprintf(cmd, "cat /proc/%d/maps", getpid());
	system(cmd);
	return 0;
}
