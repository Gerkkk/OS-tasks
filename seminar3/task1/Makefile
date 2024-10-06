main.o: main.c
	gcc -O0 -g3 -Wall -c main.c
	gcc -masm=intel -g3 -Wall -c main.c -S

main: main.o
	gcc -o main main.o

clean:
	rm -rf *.o main *.s
