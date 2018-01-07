cmake_minimum_required(VERSION 3.8)
project(Server)

set(CMAKE_C_STANDARD 11)
find_package(Threads)

set(SOURCE_FILES main.c connection.c connection.h chat_message.c chat_message.h data.c data.h input.c input.h server.c server.h)
add_executable(Server ${SOURCE_FILES})
target_link_libraries (Server ${CMAKE_THREAD_LIBS_INIT})
