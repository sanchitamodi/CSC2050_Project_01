#include <stdio.h>
int main(int argc, char *argv[]){
	int num = argv[1][0] - '0';

	int factorial = 1;
	for(int i = 1; i <= num; i++){
		factorial = factorial * i;
	}

	printf("%d\n", factorial);
	return 0;
}
