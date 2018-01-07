#include "input.h"

void clear_buffer() {
    int c = 0;
    while (c != '\n' && c != EOF) {
        c = getchar();
    }
}

int read_line(char *str, int size) {
    char *endline_pos = NULL;

    if (fgets(str, size, stdin) != NULL) {
        endline_pos = strchr(str, '\n');
        if (endline_pos != NULL) {
            *endline_pos = '\0';
        }
        else {
            clear_buffer();
        }
        return LINE_OK;
    }
    else {
        clear_buffer();
        return LINE_ERROR;
    }
}