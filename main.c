#include <stdio.h>
int main(int argc,char *argv[])
{
  if(1==argc)
    printf("hello,world!\n");
  else
  {
    int i=0;
    for(i=1;i<argc;i++)
      printf("%s\n",argv[i]);
  }
  return 0;
}
