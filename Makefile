default:
	make clean
	make build
	make run

clean:
	# delete all files used in creation of database
	rm {./data/database/1.txt, ./data/wrangled/*.wr} >/dev/null 2>/dev/null || true
	rm {./metric_generator/main, ./template/eucledian_distance} >/dev/null 2>/dev/null || true
	rm {./wt/serial, ./wt/param.txt} >/dev/null 2>/dev/null || true

build:
	# regenerate the param file and the binary of all codes
	touch ./wt/param.txt
	g++-10 -std=c++17 -O2 -o ./metric_generator/main ./metric_generator/main.cpp
	g++-10 -std=c++17 -O2 -o ./template/eucledian_distance ./template/eucledian_distance.cpp
	g++-10 -std=c++17 -O2 -o ./wt/serial ./wt/serial.cpp

run:
	./main.sh
