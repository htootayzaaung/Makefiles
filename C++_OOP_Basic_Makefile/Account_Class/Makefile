executable: Account.o main.o
	g++ -std=c++14 Account.o main.o -o executable

Account.o: Account.cpp Account.h
	g++ -std=c++14 -c Account.cpp

main.o: main.cpp
	g++ -std=c++14 -c main.cpp

clean:
	rm *.o 
