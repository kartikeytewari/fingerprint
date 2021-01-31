# compiles and run the metric generator file
rm main.out
g++ -std=c++17 -Wshadow -Wall -Wno-unused-result -O2 -o main main.cpp 
./main.out < ../data/database/1.txt 
