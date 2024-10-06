#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int gcd (int a, int b) {
	if (a == 0) {
		return b;
	} else {
		return gcd(b % a, a);
	}
} 

int main(int argc, char *argv[], char *envp[]){
	pid_t pid, ppid, my_pid;

	pid = fork();
	ppid = getppid();
	my_pid = getpid();
	
	if (pid == -1) {
		printf("Faled to create new process. Try again!\n");
		return -1;
	} else if (pid == 0) {
		printf("I'm a child of process with PID %d. My PID is %d\n", ppid, my_pid);
		
		
		int res = execle("/bin/a", "/bin/a", "main.c", 0, envp);
		
		if (res < 0) {
			printf("BAD");
			return -1;
		}
	} else {
		printf("I'm a parent of process with PID %d. My PID is %d\n", pid, my_pid);
	}
 	
	return 0;
}
