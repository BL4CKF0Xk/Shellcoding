#include <stdio.h>
#include <string.h>

main()
{
  unsigned char code[] = \
"SHELLCODE";
  
  printf("Shellcode Lenght: %d\n",(int)strlen(code));
  int (*ret)() = (int(*)())code;

  ret();
}
