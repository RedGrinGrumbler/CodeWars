#include <string.h>
const char* greet(const char *name, const char *owner) {
  if(0 == strcmp(name, owner)){
    return "Hello boss";
  }else{
    return "Hello guest";
  }
}

//Alternate Solution
/*
  const char* greet(const char *name, const char *owner) {
      return strcmp(name, owner)? "Hello guest" : "Hello boss";
  }
*/