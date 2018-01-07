#pragma once

#include <stdlib.h>
#include <string.h>

typedef struct {
    char *buffer;
    size_t size;
} data;

data* new_data(const char *buffer);
void free_data(data *_data);