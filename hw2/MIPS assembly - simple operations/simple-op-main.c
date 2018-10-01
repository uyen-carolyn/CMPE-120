#include <stdio.h>
char * my_name = "Uyen Nguyen";
extern unsigned int simple_op(unsigned int a, unsigned int b);
void main() {
  unsigned int a, b, result;
  printf("Simple op demo by %s at %s %s\n", my_name, __DATE__, __TIME__);
  printf("Please input a : ");
  scanf("%u", &a);
  printf("Please input b : ");
  scanf("%u", &b);
  result = simple_op(a, b);
  printf("simple_op(%u, %u) = %u(0x%08x)\n", a, b, result, result);
}
