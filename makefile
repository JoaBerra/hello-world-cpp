LDFLAGS = -lstdc++

main.o: main.cpp functions.h
	$(CC) -c main.cpp

factorial.o: factorial.cpp functions.h
	$(CC) -c factorial.cpp

hello.o: hello.cpp functions.h
	$(CC) -c hello.cpp

hello: main.o factorial.o hello.o
	$(CC) main.o factorial.o hello.o $(LDFLAGS) -o hello

clean:
	- rm *.o ./hello
