find_package(Threads REQUIRED)
add_executable(app1
  app1.c
  )
target_link_libraries(app1
  mylib
  Threads::Threads
  )
