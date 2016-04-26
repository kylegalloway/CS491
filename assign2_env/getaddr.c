#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
 
int main(void)
{
  printf("PAYLOAD address: %p\n", getenv("PAYLOAD"));
  return 0;
}