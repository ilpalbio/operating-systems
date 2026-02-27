cmake_minimum_required(VERSION 3.30)
project(sistemi_operativi C)

include_directories(/usr/src/linux-headers-6.14.0-37-generic/include)

set(CMAKE_C_STANDARD 11)

add_executable(sistemi_operativi main.c
        simple.c
)
