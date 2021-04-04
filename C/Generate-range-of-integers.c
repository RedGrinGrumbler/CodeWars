#include <stdlib.h>
#include <math.h>

int *generate_range(int min, int max, int step, size_t *sz) {
    //printf("min: %d\nmax: %d\nstep: %d\nsz: %d\n", min, max, step, *sz);
  
    int size = ceil(max/step);
    int c[size];
    *sz=size;
  
    for(int i=0; i<size; i++){
      c[i] = min;
      min += step;
    }
  
    return c;
}