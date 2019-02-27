add_library(mylib SHARED
  mylib.c
  )
target_include_directories(mylib
  PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}
  )
target_compile_options(mylib
  PUBLIC -Wall
  )
