compile: 
	echo "Deleting Old Databases"
	rm ./data/database/1.txt || true
	rm ./data/wrangled/*.wr || true
	echo "Deleting binaries"
	rm ./metric_generator/main || true
	rm ./template/eucledian_distance || true
	rm ./wt/serial || true
	echo "Regenerating Parameter file"
	rm ./wt/param.txt || true
	touch ./wt/param.txt
	echo "Compiling all binaries"
	g++-10 -std=c++17 -O2 -Wshadow -Wall -Wno-unused-result -o ./metric_generator/main ./metric_generator/main.cpp
	g++-10 -std=c++17 -O2 -Wshadow -Wall -Wno-unused-result -o ./template/eucledian_distance ./template/eucledian_distance.cpp
	g++-10 -std=c++17 -O2 -Wshadow -Wall -Wno-unused-result -o ./wt/serial ./wt/serial.cpp

run:
	./main.sh
