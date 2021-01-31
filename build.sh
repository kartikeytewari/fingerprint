#clean all old database
echo "Deleting Old Databases"
rm ./data/database/1.txt
rm ./data/wrangled/*.wr.txt

# clean all binaries
echo "Deleting binaries"
rm ./metric_generator/main.out
rm ./template/eucledian_distance.out
rm ./wt/serial.out

# regenerate param file
echo "Regenerating Parameter file"
rm ./wt/param.txt
touch ./wt/param.txt

# compile all files
echo "Compiling all binaries"
g++ -std=c++17 -Wshadow -Wall -Wno-unused-result -O2 -o ./metric_generator/main ./metric_generator/main.cpp
g++ -std=c++17 -Wshadow -Wall -Wno-unused-result -O2 -o ./template/eucledian_distance ./template/eucledian_distance.cpp
g++ -std=c++17 -Wshadow -Wall -Wno-unused-result -O2 -o ./wt/serial ./wt/serial.cpp
