cmake_minimum_required(VERSION 3.10)
project(LLDeque C)

set(CMAKE_C_STANDARD 11)

include_directories(.)

add_executable(LLDeque
        linkedList.c
        linkedList.h
        linkedListMain.c)
