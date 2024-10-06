#include <sys/types.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>

int main(){
	int fd[2], result;
	char resstring[10];
	
	if (pipe(fd) < 0) {
		printf("can\'t open pipe\n");
		exit(-1);
	}
	
	
	result = fork();
	
	if (result < 0) {
		printf("can\'t fork child\n");
		exit(-1);
	} else if (result > 0) {
		
		if (close(fd[1]) < 0) {
			printf("parent: can\'t close writing side of pipe\n");
			exit(-1);
		}	
		
		snprintf(resstring, 10, "%d", fd[0]);
		
		int res = execl("./gcd", "./gcd", resstring, NULL);
		
		if (res < 0) {
			printf("parent: can\'t give control to gcd.c");
			return -1;
		}
			
	} else {
		if (close(fd[0]) < 0) {
			printf("child: can\'t close reading side of pipe\n");
			exit(-1);
		}
		
		snprintf(resstring, 10, "%d", fd[1]);
		
		int res = execl("./rand", "./rand", resstring, NULL);
		
		if (res < 0) {
			printf("child: can\'t give control to rand.c");
			return -1;
		}
	}

	return 0;
}
