#include <stdio.h>

int main(int, char **);

void foo() {
	int a = 4;
	printf("foo has a lot of variadic food %d", a);
}

int main(int argc, char ** argv) {
	printf("Hello World!\n");
	return 0;
}

