#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

all: writer reader

reader.o: reader.c
	gcc -O0 -g3 -Wall -c reader.c
	gcc -masm=intel -g3 -Wall -c reader.c -S
writer.o: writer.c
	gcc -O0 -g3 -Wall -c writer.c
	gcc -masm=intel -g3 -Wall -c writer.c -S
reader: reader.o
	gcc -o reader reader.o

writer: writer.o
	gcc -o writer writer.o
clean:
	rm -rf *.o aaa.fifo  writer reader *.s

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
  char    name[] = "aaa.fifo";

  (void)umask(0);

  //if (mknod(name, S_IFIFO | 0666, 0) < 0) {                                   
  if (mkfifo(name, 0666) < 0 && errno != EEXIST ) {
      printf("Can\'t create FIFO, by another reason\n");
      exit(-1);
  }
  
  if ((fd = open(name, O_WRONLY, O_NDELAY)) < 0) {
      printf("Can\'t open FIFO for writting\n");
      exit(-1);
  }
  
  size = write(fd, "Hello, world!", 14);

  if (size != 14) {
      printf("Can\'t write all string to FIFO\n");
      exit(-1);
  }


  if (close(fd) < 0) {
      printf("parent: Can\'t close FIFO\n"); exit(-1);
  }

  printf("Writer exit\n");

  
  return 0;
}
