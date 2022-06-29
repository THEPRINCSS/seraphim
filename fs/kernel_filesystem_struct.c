#include "stdint.h"
struct kernel_filesystem
{
    char filename[256];
    uint8_t disk_number;
    uint8_t head_number;
    uint8_t road_number;
    uint8_t sector_number;
    uint8_t sector_count;
};
