cmake_minimum_required(VERSION 3.0.0)
project(cmake VERSION 0.1.0)

#デバッグ用
#set(CMAKE_VERBOSE_MAKEFILE TRUE)

set(CMAKE_C_FLAGS "-g -O0 -Wall -MMD -MP")

add_subdirectory(lib)

set(LIB_PATH "${CMAKE_CURRENT_SOURCE_DIR}/lib")
foreach(tag IN ITEMS app1 app2 app3)
    set(TARGET ${tag})
    add_subdirectory(${tag})
endforeach()
