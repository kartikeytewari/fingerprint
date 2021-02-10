# Author: Kartikey Tewari
# E-mail: kartikeya30@gmail.com


# compiles and run the metric generator file
rm main
g++-10 -std=c++17 -O2 -Wshadow -Wall -Wno-unused-result -o main main.cpp 
./main < ../data/database/1.txt 
