all: control.o write.o
	gcc -o control control.o ; gcc -o write write.o

control.o: control.c constants.h
	gcc -c control.c

write.o: write.c constants.h
	gcc -c write.c

clean: 
	rm *.o control write telephone.txt