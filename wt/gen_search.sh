# regerate param file
echo "Regenerating Param File"
rm param.txt
touch param.txt

# clean the data
echo "Cleaning the data"
echo $(wc -l ../data/auth_candidate/file.txt | awk '{ print $1 }') > temp.txt
cat ../data/auth_candidate/file.txt >> temp.txt

# pass the data through the template
echo "Passing the data through the template"
../template/eucledian_distance < temp.txt > param.txt
rm temp.txt

# make tree and search the value
echo "Generating the tree and performing search"
g++-10 -std=c++17 -O2 -Wshadow -Wall -Wno-unused-result -o serial serial.cpp
./serial < ../data/database/1.txt
