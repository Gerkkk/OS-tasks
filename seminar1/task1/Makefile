main.o: main.c
	gcc -O0 -g3 -Wall -c main.c
	gcc -masm=intel -g3 -Wall -c main.c -S

main.exe: main.o
	gcc -o main.exe main.o

clean:
	rm -rf *.o *.exe *.s
