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

