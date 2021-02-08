compile: 
	rm ./data/database/1.txt >/dev/null 2>/dev/null || true
	rm ./data/wrangled/*.wr >/dev/null 2>/dev/null || true
	rm ./metric_generator/main >/dev/null 2>/dev/null || true
	rm ./template/eucledian_distance >/dev/null 2>/dev/null || true
	rm ./wt/serial >/dev/null 2>/dev/null || true
	rm ./wt/param.txt >/dev/null 2>/dev/null || true
	touch ./wt/param.txt
	g++-10 -std=c++17 -O2 -Wshadow -Wall -Wno-unused-result -o ./metric_generator/main ./metric_generator/main.cpp
	g++-10 -std=c++17 -O2 -Wshadow -Wall -Wno-unused-result -o ./template/eucledian_distance ./template/eucledian_distance.cpp
	g++-10 -std=c++17 -O2 -Wshadow -Wall -Wno-unused-result -o ./wt/serial ./wt/serial.cpp

clean:
	rm ./metric_generator/main
	rm ./template/eucledian_distance
	rm ./wt/serial 

run:
	./main.sh
