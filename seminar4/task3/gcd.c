#include <sys/types.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>

int gcd (int a, int b) {
	if (a == 0) {
		return b;
	} else {
		return gcd(b % a, a);
	}
}

int main (int argc, char *argv[], char *env[]) {
	char resstring[1], resstring1[1];
	int size;

	if (argc == 1) {
		printf("Parent: faled to give argument to gcd.c");
		return -1;
	}
	
	char **Pend = NULL;
	
	long a = strtol(argv[1], Pend, 10);
	int b = (int)a;


	size = read(b, resstring, 1);
	if (size != 1) {
		printf("parent: can\'t read 1st string from pipe\n");
	}
	
	size = read(b, resstring1, 1);
	if (size != 1) {
		printf("parent: can\'t read 2nd string from pipe\n");
	}
		
	if (close(b) < 0) {
		printf("parent: can\'t close reading side of pipe\n");
		exit(-1);
	}
		
	printf("Parent(gcd): got two chars:%c and %c\n", resstring[0], resstring1[0]);
	
	int d = (resstring[0] - '0'), c = resstring1[0] - '0';
	
	printf("Parent(gcd): calculated their gcd: %d. My job here is done.\n", gcd(d, c));

	return 0;
}
