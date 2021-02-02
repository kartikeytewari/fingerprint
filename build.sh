#clean all old database
echo "Deleting Old Databases"
rm ./data/database/1.txt
rm ./data/wrangled/*.wr.txt

# clean all binaries
echo "Deleting binaries"
rm ./metric_generator/main
rm ./template/eucledian_distance
rm ./wt/serial

# regenerate param file
echo "Regenerating Parameter file"
rm ./wt/param.txt
touch ./wt/param.txt

# compile all files
echo "Compiling all binaries"
g++-10 -std=c++17 -O2 -Wshadow -Wall -Wno-unused-result -o ./metric_generator/main ./metric_generator/main.cpp
g++-10 -std=c++17 -O2 -Wshadow -Wall -Wno-unused-result -o ./template/eucledian_distance ./template/eucledian_distance.cpp
g++-10 -std=c++17 -O2 -Wshadow -Wall -Wno-unused-result -o ./wt/serial ./wt/serial.cpp
