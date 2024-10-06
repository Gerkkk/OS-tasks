all: rand.o gcd.o main.o rand gcd main

rand.o: rand.c
	gcc -O0 -g3 -Wall -c rand.c
	gcc -masm=intel -g3 -Wall -c rand.c -S

gcd.o: gcd.c
	gcc -O0 -g3 -Wall -c gcd.c
	gcc -masm=intel -g3 -Wall -c gcd.c -S

main.o: main.c
	gcc -O0 -g3 -Wall -c main.c
	gcc -masm=intel -g3 -Wall -c main.c -S

rand: rand.o
	gcc -o rand rand.o

gcd: gcd.o
	gcc -o gcd gcd.o

main: main.o
	gcc -o main main.o

clean:
	rm -rf *.o main gcd rand *.s
