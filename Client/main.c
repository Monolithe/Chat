#include <stdio.h>

#include "connection.h"

int main() {
    init();

    connection *conn = set_connection("localhost", 80);

    start_connection(conn);

    data sending = {"GET / HTTP/1.0\r\n\r\n", strlen("GET / HTTP/1.0\r\n\r\n")};

    send_data(conn, &sending);

    data *received = recv_data(conn);

    printf("%s\n", received->buffer);

    free(received->buffer);
    free(received);

    close_connection(conn);

    return 0;
}