#include "malloc_accounting.h"

malloc_record * search_record(struct rb_root *root, unsigned long vaddr)
{
  	struct rb_node *node = root->rb_node;

  	while (node) {
  		struct malloc_record *data = container_of(node, struct malloc_record, node);

		if (vaddr < data->vaddr)
  			node = node->rb_left;
		else if (vaddr > data->vaddr)
  			node = node->rb_right;
		else
  			return data;
	}

	return NULL;
}

int insert_record(struct rb_root *root, malloc_record *data)
{
  	struct rb_node **new = &(root->rb_node), *parent = NULL;

  	while (*new) {
  		malloc_record *this = container_of(*new, malloc_record, node);

		parent = *new;
  		if (data->vaddr < this->vaddr)
  			new = &((*new)->rb_left);
  		else if (data->vaddr > this->vaddr)

  			new = &((*new)->rb_right);
  		else
  			return 0;
  	}

  	rb_link_node(&data->node, parent, new);
  	rb_insert_color(&data->node, root);

	return 1;
}

void free_record(struct malloc_record *node)
{
	if (node != NULL) {
		free(node);
		node = NULL;
	}
}
