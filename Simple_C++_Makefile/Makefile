executable: main.o message.o 
	g++ main.o message.o -o executable

main.o: main.cpp
	g++ -c $^ -o $@

message.o: message.cpp message.hpp 
	g++ -c message.cpp 

clean:
	rm *.o output
