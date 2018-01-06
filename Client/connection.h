#pragma once

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

#ifdef WIN32

#include <winsock2.h>

#elif defined (linux)

#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <netdb.h>
#include <stdlib.h>
#include <errno.h>

#define INVALID_SOCKET -1
#define SOCKET_ERROR -1
#define closesocket(s) close(s)

typedef int SOCKET;
typedef struct sockaddr_in SOCKADDR_IN;
typedef struct sockaddr SOCKADDR;
typedef struct in_addr IN_ADDR;

#else

#error not defined for this platform

#endif

typedef struct {
    SOCKET sock;
    SOCKADDR_IN sin;
    bool opened;
} connection;

typedef struct {
    char *buffer;
    size_t size;
} data;

void init(void);
connection* set_connection(const char *hostname, uint32_t port);
void start_connection(connection *_connection);
void send_data(connection *_connection, data *buffer);
data* recv_data(connection *_connection);
void close_connection(connection *_connection);
