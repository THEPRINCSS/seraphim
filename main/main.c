#include "kernel_memory_struct.h" 

struct kernel_memory * temp; 
struct kernel_memory * main_struct;

void kmain()
{
    main_struct->high_reg = 0x0;
    main_struct->low_reg = 0x7c00;
    main_struct->size = 512;
    temp = main_struct->next_point;
}
