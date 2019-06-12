#include <stdio.h>
#include "../include/Mod1.h"

#ifndef RET_SUCCESS
#define RET_SUCCESS 0
#endif //RET_SUCCESS

int main(int argc, char ** argv){

    char * str = "Hello World";
    prt(str);
    return(RET_SUCCESS);

}
