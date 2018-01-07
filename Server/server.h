#pragma once

#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

#include "connection.h"
#include "chat_message.h"
#include "data.h"
#include "input.h"

typedef struct {
    SOCKET csock;
    bool on;
} client_connection;

void* listening(void *_csock);
void run_server();
