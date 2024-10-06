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
	double a;
	
	
	int i = 0;
	while (envp[i] !=NULL) {
		char *cur = envp[i];
		if (cur[0] == 'V' && cur[1] == 'A' && cur[2] == 'R' && cur[3] == '=') {
			a = strtod(cur + 4, Pend);
			break;
		}
		i++;
	}
	
	if (envp[i] == NULL) {
		printf("Please enter the number");
		return -1;
	}
	
	if (a < eps) {return -1;}

	double cur_x = 1.0;
	double next_x = (cur_x + (a / cur_x)) / 2;
	
	while (abs1(next_x - cur_x) >= eps) {
		cur_x = next_x;
		next_x = (cur_x + (a / cur_x)) / 2;
	}
	
	printf("%lf\n", next_x);
	return 0;
}
