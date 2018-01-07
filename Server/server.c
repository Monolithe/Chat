#include "server.h"

client_connection **clients;
size_t n_clients = 0;

pthread_t **threads;
size_t size_threads;
pthread_mutex_t mutex;

void *listening(void *_csock) {
    client_connection *client = (client_connection *) _csock;

    while (client->on) {
        char buffer[1024] = {0};

        ssize_t n = recv(client->csock, buffer, sizeof(buffer) - 1, 0);

        if (n < 0) {
            perror("recv()");
            exit(errno);
        }

        if (strcmp(buffer, "CLOSE") == 0) {
            client->on = false;
            closesocket(client->csock);
        }
        else {
            printf("%s\n", buffer);
            pthread_mutex_lock(&mutex);

            for (size_t i = 0; i < n_clients; i++) {
                if (send(client[i].csock, buffer, 1024, 0) < 0) {
                    perror("send()");
                }
            }

            pthread_mutex_unlock(&mutex);
        }
    }
}

void run_server() {
    init();

    bool running = true;

    connection *server_socket = set_connection("ANY", 11111);

    start_connection(server_socket);

    if (pthread_mutex_init(&mutex, NULL) != 0) {
        printf("\n mutex init failed\n");
        close_connection(server_socket);
        exit(EXIT_FAILURE);
    }

    while (running) {

        SOCKADDR_IN csin = {0};
        SOCKET csock;

        socklen_t sinsize = sizeof csin;

        csock = accept(server_socket->sock, (SOCKADDR *) &csin, &sinsize);

        if (csock == INVALID_SOCKET) {
            perror("accept()");
            exit(errno);
        }

        client_connection *c_connect = malloc(sizeof(client_connection));
        c_connect->on = true;
        c_connect->csock = csock;

        n_clients++;
        clients = realloc(clients, n_clients);
        clients[n_clients - 1] = c_connect;

        pthread_t *c_thread = malloc(sizeof(pthread_t));
        int res = pthread_create(c_thread, NULL, listening, (void *) clients[n_clients- 1]);

        if (res) {
            fprintf(stderr, "%s", strerror(res));
            closesocket(csock);
            free(c_connect);
        }
        else {
            size_threads++;
            threads = realloc(threads, size_threads);
            threads[size_threads - 1] = c_thread;
        }
    }
}


