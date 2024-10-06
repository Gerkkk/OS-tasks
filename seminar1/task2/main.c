#include <stdio.h>

double abs1(double x) {
	if (x > 0.0) {
		return x;
	} else {
		return (-x);
	}
}

int main(){
	double eps = 0.000001;
	double a;
	int r = scanf("%lf", &a);
	
	if (a < 0 || r == 0) {return -1;}

	double cur_x = 1.0;
	double next_x = (cur_x + (a / cur_x)) / 2;
	
	while (abs1(next_x - cur_x) >= eps) {
		cur_x = next_x;
		next_x = (cur_x + (a / cur_x)) / 2;
	}
	
	printf("%lf/n", next_x);
	return 0;
}
