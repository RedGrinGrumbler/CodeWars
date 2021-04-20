#include <stddef.h>
#include <stdio.h>

size_t get_count(const char *s)
{
    char v[5] = "aeiou";
    int y=0;
    for (int x=0;x<strlen(s);x++){
      //Eliminate " "'s
      if (s[x] == " "){
        continue;
      }
      //Count the Vowels
      if (strchr(v, s[x])){
        printf("\n%c", s[x]);
        y++;
      }
    }
    printf("\n%d",y);
    //return a ? b : c;
    return y;
}
