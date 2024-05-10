#include <stdio.h>
#include <string.h>

unsigned char code[] = \
"SHELLCODE";

main()
{
  printf("Shellcode Lenght: %d\n",strlen(code));
  int (*ret)() = (int(*)())code;

  ret();
}
