#include <stdio.h>
#include <unistd.h>

int main(){
	printf("%u\n", getuid());
	printf("%u\n", getgid());
	
}
