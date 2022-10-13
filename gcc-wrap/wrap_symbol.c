#include "wrap_symbol.h"
#include <stdio.h>
#include <stdlib.h>
#include <execinfo.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define BT_BUF_SIZE 100

void
myfunc3(void)
{
	int j, nptrs;
	void *buffer[BT_BUF_SIZE];
	char **strings;

	nptrs = backtrace(buffer, BT_BUF_SIZE);
	fprintf(stderr, "backtrace() returned %d addresses\n", nptrs);

	/* The call backtrace_symbols_fd(buffer, nptrs, STDOUT_FILENO)
	would produce similar output to the following: */

	strings = backtrace_symbols(buffer, nptrs);

	if (strings == NULL) {
		fprintf(stderr, "backtrace_symbols fail");
		exit(EXIT_FAILURE);
	}

	for (j = 0; j < nptrs; j++)
		fprintf(stderr, "%s\n", strings[j]);

	free(strings);
}

void* __wrap_malloc(size_t size)
{
	fprintf(stdout, "call __wrap_malloc function, size: %d\n", size);
	myfunc3();
	return __real_malloc(size);
}

void __wrap_free(void* ptr)
{
	fprintf(stdout, "call __wrap_free function\n");
	__real_free(ptr);
}

/*
void* __wrap__Znwm(unsigned long size)
{
	fprintf(stdout, "call __wrap__Znwm funtcion, size: %d\n", size);
	return __real__Znwm(size);
}

void __wrap__ZdlPv(void* ptr)
{
	fprintf(stdout, "call __wrap__ZdlPv function\n");
	__real__ZdlPv(ptr);
}
*/





int foo()
{
	fprintf(stdout, "call foo function\n");
	return 0;
}

int __wrap_foo()
{
	fprintf(stdout, "call __wrap_foo function\n");
	return 0;
};