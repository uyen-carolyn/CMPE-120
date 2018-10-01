#include <stdio.h>

char * date = __DATE__;
char * time = __TIME__;
char * my_name = "Uyen Nguyen"; 

void main() {
	printf("hello from %s\n", my_name); 
	printf("current time is %s %s\n", date, time);
}
