#include "stdint.h"
void * kmalloc(uint64_t *size)
{
	char arr[*size];
	void *p_arr;
	p_arr = arr;
	return p_arr;
}	
