cmake_minimum_required(VERSION 3.0.0)
project(cmake VERSION 0.1.0)

FILE(GLOB SRCS *.c)

include_directories(${LIB_PATH})
add_executable(${TARGET} 
    ${SRCS}
)
target_link_libraries(${TARGET} mylib)
