#include <stdio.h>
char * my_name = "Uyen Nguyen";
char a[]={33, 4, 78, 100, -12};
extern void sort(char a[], int size);
void print_array(char a[], int size) {
  int i;
  for (i=0; i< size; i++)
    printf("%d, ", a[i]);
  printf("\n");}
void main() {
  printf("Bubble sort demo by %s at %s %s\n", my_name, __DATE__, __TIME__);
  printf("before sorting : ");
  print_array(a, 5);
  sort(a, 5);
  printf("after sorting : ");
  print_array(a, 5);
}
