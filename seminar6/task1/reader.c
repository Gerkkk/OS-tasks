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
  size_t size1;
  char pathname[] = "writer.c";
	
  key_t key;
  
  if((key = ftok(pathname, 0)) < 0) {
  	printf("Cant generate key\n");
  	exit(-1);
  }
  

  if ((shmid = shmget(key, size * sizeof(char), 0)) < 0) {
  	printf("Cant find shared memory\n");
  	exit(-1);
  }

  
  if ((array = (char*)shmat(shmid, NULL, 0)) == (char*)-1) {
  	printf("Cant attach shared memory\n");
  	exit(-1);
  }
  
  printf("READER:\n%s", array);
  
  if (shmdt(array) < 0) {
  	printf("Cant deattach shared memory\n");
  	exit(-1);
  }
  
//  if (shmctl(key, IPC_RMID, NULL) < 0) {
//  	printf("Cant deattach shmtkl memory\n");
//  	exit(-1);
//  }
  
  
  
  return 0;
}
