#include "connection.h"

/**
 * init()
 * Used for Windows compatibility
 */
void init(void) {
#ifdef WIN32
    WSADATA wsa;
    int err = WSAStartup(MAKEWORD(2, 2), &wsa);
    if (err < 0) {
        puts("WSAStartup failed !");
        exit(EXIT_FAILURE);
    }
#endif
}

/**
 * Create a connection
 * @param hostname Hostname
 * @param port Port
 * @return The new connection
 */
connection *set_connection(const char *hostname, uint32_t port) {
    connection *new = malloc(sizeof(connection));
    new->opened = false;

    new->sock = socket(AF_INET, SOCK_STREAM, 0);

    if (new->sock == INVALID_SOCKET) {
        perror("socket()");
        exit(errno);
    }

    struct hostent *hostinfo = NULL;

    hostinfo = gethostbyname(hostname);
    if (hostinfo == NULL) {
        fprintf(stderr, "Unknow host %s\n", hostname);
        exit(EXIT_FAILURE);
    }

    new->sin.sin_addr = *(IN_ADDR *) hostinfo->h_addr;
    new->sin.sin_port = htons(port);
    new->sin.sin_family = AF_INET;
}

/**
 * Init the connection
 * @param _connection The connection to init
 */
void start_connection(connection *_connection) {
    if (connect(_connection->sock, (SOCKADDR *) &(_connection->sin), sizeof(SOCKADDR)) == SOCKET_ERROR) {
        perror("connect()");
        exit(errno);
    }
    _connection->opened = true;
}

/**
 * Send data through the connection
 * @param _connection The connection
 * @param _data Data to send
 */
void send_data(connection *_connection, data *_data) {
    if (!_connection->opened) {
        fprintf(stderr, "Error while trying to send data : closed connection\n");
    }
    else {
        if (send(_connection->sock, _data->buffer, _data->size, 0) < 0) {
            perror("send()");
            exit(errno);
        }
    }
}

/**
 * Receive data from the connection
 * @param _connection The connection
 * @return Received data
 */
data *recv_data(connection *_connection) {
    if (!_connection->opened) {
        fprintf(stderr, "Error while trying to receive data : closed connection\n");
    }
    else {
        data *res = malloc(sizeof(data));
        res->size = 0;
        res->buffer = calloc(100, 1);
        char buffer[100] = {'\0'};
        ssize_t n = sizeof buffer - 1;
        size_t c = 0;

        do {
            n = recv(_connection->sock, buffer, sizeof buffer - 1, 0);


            for (ssize_t i = 0; i < n; i++) {
                res->buffer[c + i] = buffer[i];
            }

            c += n;

            if (n == 99) {
                res->buffer = realloc(res->buffer, c + 1 + 100);
            }

            res->size += n;

            if (n < 0) {
                perror("recv()");
                exit(errno);
            }
        } while (n == 99);

        res->buffer[c] = '\0';

        return res;
    }
}

/**
 * Close the connection
 * @param _conn Connection to close
 */
void close_connection(connection *_conn) {
    if (_conn != NULL && _conn->opened) {
        shutdown(_conn->sock, 2);
        free(_conn);
        _conn->opened = false;
    }
}