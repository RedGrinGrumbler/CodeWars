/* Note: allocate memory yourself */
/* return NULL in case num == 0 */

#include <stdlib.h>

unsigned short *reverse_seq(unsigned short num)
{   
    unsigned short backwards[num];
    unsigned short aux[num];
    int n = num;
  
    if(num==0){
      return NULL;
    }else{
      for(int i=0; i<num; i++){
          backwards[i] += n;
          printf("%d\t", n);
          n--;
      }
    }
  
    return backwards;
}