#ifndef __MALLOC_ACCOUNTING__
#define __MALLOC_ACCOUNTING__
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <stdint.h>
#include <execinfo.h>
#include "rbtree.h"

typedef struct malloc_record {
  	struct rb_node node;
	uint32_t size;
	unsigned long vaddr;
	unsigned long backtrace[5];
} malloc_record;

malloc_record * search_record(struct rb_root *root, unsigned long vaddr);

int insert_record(struct rb_root *root, malloc_record *data);

void free_record(malloc_record *node);
#endif
