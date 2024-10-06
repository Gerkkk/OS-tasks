#include <sys/types.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>

int main(){
	int fd;
	size_t size;
	char string[14];
	
	if ((fd = open("myfile", O_RDONLY)) < 0) {
		printf("can\'t open file\n");
	}
	
	size = read(fd, string, 14);
	
	if (size != 14) {
		printf("can\'t open file\n");
	}
	
	for (int i = 0; i < 14; i++) {
		printf("%c", string[i]);
	}
	
	if (close(fd) < 0) {
		printf("can\'t close file\n");
	}

	return 0;
}
