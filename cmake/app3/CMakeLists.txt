cmake_minimum_required(VERSION 3.0.0)
project(cmake VERSION 0.1.0)

FILE(GLOB SRCS *.c)

add_executable(${TARGET} 
    ${SRCS}
)
