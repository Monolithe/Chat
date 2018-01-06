#pragma once

#include <stdlib.h>

#include "connection.h"

#define PSEUDO_SIZE 26

typedef enum command {
    POST,
    GET,
    HELP,
    QUIT,
    STOPSERVEUR,
    SUBSCRIBE,
    UNSUBSCRIBE
} command;

typedef enum command_type {
    REQUETE,
    REPONSE
} command_type;

typedef struct {
    command msg_command;
    command_type msg_type;
    data msg_data;
    char pseudo[PSEUDO_SIZE];
} chat_message;

chat_message* msg_from_buffer(char *buffer);
void free_msg(chat_message *msg);
char* get_buffer(chat_message *msg);
void print_msg(chat_message *msg);

