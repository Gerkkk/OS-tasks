#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>


int main(){
	pid_t x = getpid();
	printf("PID: %d\n", x);
	
	pid_t y = getppid();
	printf("Parent PID: %d", y);
}
