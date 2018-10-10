#include <stdio.h>
char * my_name = "Jun Sun";
int a[5]={33, 4, 78, 100, -12};
extern int sum(int a[], int size);
void main() {
  printf("Summation demo by %s at %s %s\n", my_name, __DATE__, __TIME__);
  int s = sum(a, 5);
  printf("after summation, sum= %d\n", s);
}
