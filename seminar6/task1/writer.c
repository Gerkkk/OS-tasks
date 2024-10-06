#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

int main()
{
  int size = 10000;
  int shmid;
  char *array;
  int fd;
  size_t size1, size2;
  char *pathname = "writer.c";
	
  

  size2 = lseek(fd, 0, SEEK_END);
  
  key_t key;
  
  if((key = ftok(pathname, 0)) < 0) {
  	printf("Cant generate key\n");
  	exit(-1);
  }
  
  if ((shmid = shmget(key, size * sizeof(char), 0666 | IPC_CREAT | IPC_EXCL)) < 0) {
  	if (errno != EEXIST) {
  		printf("Cant create shared memory\n");
  		exit(-1);
  	} else {
  		if ((shmid = shmget(key, size * sizeof(char), 0)) < 0) {
  			printf("Cant find shared memory\n");
  			exit(-1);
  		}
  	}
  }
  
  if ((array = (char *)shmat(shmid, NULL, 0)) == (char *)-1) {
  	printf("Cant attach shared memory\n");
  	exit(-1);
  }
  
  if ((fd = open(pathname, O_RDONLY)) < 0) {
        printf("can\'t open file\n");
  }
  size = read(fd, array, 10000);

  
	
  if (close(fd) < 0) {
	printf("can\'t close file\n");
  }
  
  return 0;
}
