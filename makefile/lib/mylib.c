#include <stdio.h>

void func_lib( char *str )
{
    printf("%s:%s\n", __func__, str);
}
