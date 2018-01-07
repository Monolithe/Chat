#include <stdio.h>
#include <stdlib.h>

#include "data.h"
#include "connection.h"
#include "input.h"

void test_connection() {
    init();

    printf("Enter domain : ");
    char str[100];
    if (read_line(str, 100) == LINE_ERROR) {
        fprintf(stderr, "Error while reading line\n");
        exit(EXIT_FAILURE);
    }

    connection *conn = set_connection(str, 80);

    start_connection(conn);

    data *sending = new_data("GET / HTTP/1.0\r\n\r\n");

    send_data(conn, sending);
    free_data(sending);

    data *received = recv_data(conn);

    printf("%s\n", received->buffer);

    free_data(received);
    close_connection(conn);
}

int main() {
    //test_connection();

    connection *conn = set_connection("localhost", 11111);

    start_connection(conn);

    while (true) {
        printf("Enter message : ");
        char str[100];
        if (read_line(str, 100) == LINE_ERROR) {
            fprintf(stderr, "Error while reading line\n");
            exit(EXIT_FAILURE);
        }

        send_data(conn, new_data(str));
    }

    return EXIT_SUCCESS;
}