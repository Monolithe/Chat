cmake_minimum_required(VERSION 3.8)
project(Client)

set(CMAKE_C_STANDARD 11)

set(SOURCE_FILES main.c connection.c connection.h chat_message.c chat_message.h ../Server/data.c ../Server/data.h ../Server/input.c ../Server/input.h)
add_executable(Client ${SOURCE_FILES})