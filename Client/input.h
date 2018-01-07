#pragma once

#include <stdio.h>
#include <string.h>

enum line_read {LINE_OK, LINE_ERROR};

void clear_buffer();
int read_line(char *chaine, int size);
