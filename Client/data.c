#include "data.h"

data* new_data(const char *buffer) {
    data *new = malloc(sizeof(data));
    new->size = strlen(buffer);
    new->buffer = malloc(new->size);
    strncpy(new->buffer, buffer, new->size);
    return new;
}

void free_data(data *_data) {
    free(_data->buffer);
    free(_data);
}