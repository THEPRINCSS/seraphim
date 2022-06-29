#include "stdint.h"

struct kernel_memory
{
    uint16_t high_reg;
    uint16_t low_reg;
    uint16_t size;
    struct kernel_memory * next_point;
};
