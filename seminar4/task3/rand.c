#include <sys/types.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>
#include <time.h>

int main (int argc, char *argv[], char *env[]) {
	if (argc == 1) {
		printf("Child: faled to give argument to gcd.c");
		return -1;
	}
	
	srand(time(NULL));
	int size;
	char **Pend = NULL;
	
	long a = strtol(argv[1], Pend, 10);
	int b = (int)a;
	
	char cur = ('0' + (rand() % 10));
	char to_parent2[1];
	to_parent2[0] = cur;
	size = write(b, to_parent2, 1);
	
	if (size < 0) {
		printf("child: can\'t write 1st string to pipe\n");
		exit(-1);
	}
	
	cur = ('0' + (rand() % 10));
	char to_parent[1];
	to_parent[0] = cur;
	size = write(b, to_parent, 1);
		
	if (size < 0) {
		printf("child: can\'t write 2nd string to pipe\n");
		exit(-1);
	}
	
	printf("child(rand): generated two digits: %c and %c, sent it to parent. Now I rest...\n", to_parent2[0], to_parent[0]);
		
	if (close(b) < 0) {
		printf("child: can\'t close writing side of pipe\n");
		exit(-1);
	}
	
	return 0;
}
