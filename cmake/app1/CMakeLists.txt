cmake_minimum_required(VERSION 3.0.0)
project(cmake VERSION 0.1.0)

include_directories(${LIB_PATH})
add_executable(${TARGET} 
    app1.c
)
target_link_libraries(${TARGET} mylib)
target_link_libraries(${TARGET} pthread)
