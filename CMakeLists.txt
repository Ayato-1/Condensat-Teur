cmake_minimum_required(VERSION 4.3)
project(projet C)

set(CMAKE_C_STANDARD 23)

add_executable(projet
        src/main.c
        src/hashtable.c
        src/mode_l.c
        src/cli.c
        src/mode_g.c
        src/crypto.c
        include/crypto.h
        include/cli.h
        src/dict.c
        include/mode_l.h
        include/mode_g.h
        include/hashtable.h
        include/dict.h
        src/t3c_format.c
        include/t3c_format.h)
