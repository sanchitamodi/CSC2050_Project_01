#include <stdio.h>
int main(){
	int num;
	scanf("%d", &num); //pass input from scanf to num

	int factorial = 1;
	for(int i = 1; i <= num; i++){
		factorial = factorial * i;
	}

	printf("%d\n", factorial);
	return 0;
}
