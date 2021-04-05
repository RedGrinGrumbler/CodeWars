#include <stdbool.h>
#include <stddef.h>

size_t count_sheep(const bool *sheep, size_t total){
    printf("size: %d\n", total);
    size_t sleep = 0;
    for(int i = 0; i < total; i++){
        if(true==sheep[i]){
            sleep++;
        }
    }
    return sleep;
};