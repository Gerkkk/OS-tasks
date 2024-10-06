#include <stdio.h>
#include <stdlib.h>

double abs1(double x) {
	if (x > 0.0) {
		return x;
	} else {
		return (-x);
	}
}

int main(int argc, char *argv[], char *envp[]){
	double eps = 0.000001;
	char **Pend = NULL;
	
	if (argc == 1) {
		printf("Please enter the number");
		return -1;
	}
	
	double a = strtod(argv[1], Pend);
	if (a < eps) {return -1;}

	double cur_x = 1.0;
	double next_x = (cur_x + (a / cur_x)) / 2;
	
	while (abs1(next_x - cur_x) >= eps) {
		cur_x = next_x;
		next_x = (cur_x + (a / cur_x)) / 2;
	}
	
	printf("%lf/n", next_x);
	return 0;
}
