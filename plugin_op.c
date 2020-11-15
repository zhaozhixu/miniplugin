#include "ln_op.h"
#include <stdio.h>
#include "ln_list.h"

int foo(int a)
{
    ln_list *list = NULL;
    list = ln_list_append(list, "hi");
    printf("Hello, world! %d\n", a);
    return a;
}
