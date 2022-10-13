#include <stdlib.h>
#include <stdio.h>
int do_malloc() {
	int *p = malloc(1234321);
	free(p);
}
