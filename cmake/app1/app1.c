#include <stdio.h>
#include <pthread.h>
#include "mylib.h"

void *threadFunc( void *arg )
{
    func_lib("app1");

    return(NULL);
}

int main(int argc, char const *argv[])
{
    pthread_t thread;

    pthread_create(&thread, NULL, threadFunc, NULL);

    pthread_join(thread, NULL);

    return 0;
}
