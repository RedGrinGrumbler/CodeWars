#include <stddef.h>

int find_smallest_int(int *vec, size_t len)
{
    int low=0;
    for(size_t i=1; i<len; i++){
      if( (int)vec[i]<(int)vec[low] ){
        low = i;
      }
    }
    return vec[low];
}