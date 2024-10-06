#include <sys/types.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>
#include<sys/wait.h>

int main(){
	int fd[2], fd1[2], result;
	size_t size;
	char resstring[14], resstring1[14];
	
	if (pipe(fd) < 0) {
		printf("can\'t open pipe\n");
		exit(-1);
	}
	
	if (pipe(fd1) < 0) {
		printf("can\'t open pipe\n");
		exit(-1);
	}
	
	result = fork();
	
	if (result < 0) {
		printf("can\'t fork child\n");
		exit(-1);
	} else if (result > 0) {
		
		if (close(fd[0]) < 0) {
			printf("parent: can\'t close reading side of pipe\n");
			exit(-1);
		}
	
		size = write(fd[1], "Hello, child!", 14);
		
		
		if (size != 14) {
			printf("parent: can\'t write all string to pipe\n");
		}
		
		if (close(fd[1]) < 0) {
			printf("parent: can\'t close writing side of pipe\n");
			exit(-1);
		}
		
		//--------------------
		if (close(fd1[1]) < 0) {
			printf("parent: can\'t close writing side of pipe\n");
			exit(-1);
		}
	
		size = read(fd1[0], resstring1, 14);
		
		
		if (size < 0) {
			printf("parent: can\'t read string from pipe\n");
		}
		
		if (close(fd1[0]) < 0) {
			printf("parent: can\'t close reading side of pipe\n");
			exit(-1);
		}
		
		printf("Parent exit, resstring:%s\n", resstring1);
	} else {
		if (close(fd1[0]) < 0) {
			printf("child: can\'t close reading side of pipe\n");
			exit(-1);
		}
	
		size = write(fd1[1], "Hello,parent!", 14);
		
		
		if (size != 14) {
			printf("child: can\'t write all string to pipe\n");
		}
		
		if (close(fd1[1]) < 0) {
			printf("child: can\'t close writing side of pipe\n");
			exit(-1);
		}
	
	
		//-------------
		if (close(fd[1]) < 0) {
			printf("child: can\'t close writing side of pipe\n");
			exit(-1);
		}
	
		size = read(fd[0], resstring, 14);
		
		
		if (size < 0) {
			printf("child: can\'t read string from pipe\n");
		}
		
		if (close(fd[0]) < 0) {
			printf("child: can\'t close reading side of pipe\n");
			exit(-1);
		}
		
		printf("Child exit, resstring:%s\n", resstring);

	}

	return 0;
}
