#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

int main()
{
  int     fd;

  size_t  size;
  char    resstring[14];
  char    name[] = "aaa.fifo";

  (void)umask(0);
  
  if (mkfifo(name, 0666) < 0 && errno != EEXIST) {
    printf("Can\'t create FIFO by another reason\n");
    exit(-1);
  }
  
  if ((fd = open(name, O_RDONLY)) < 0) {
      printf("Can\'t open FIFO for reading\n");
      exit(-1);
    }

    size = read(fd, resstring, 14);

    if (size < 0) {
      printf("Can\'t read string from FIFO\n");
      exit(-1);
    }

    printf("Reader exit, resstring:%s\n", resstring);

    if (close(fd) < 0) {
      printf("child: Can\'t close FIFO\n"); 
      exit(-1);
    }  
  return 0;
}  
