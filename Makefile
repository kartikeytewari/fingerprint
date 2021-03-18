default:
	make clean
	make build
	make run

clean:
	# delete all files used in creation of database
	rm ./data/database/1.txt >/dev/null 2>/dev/null || true
	rm ./data/wrangled/*.wr.txt >/dev/null 2>/dev/null || true
	rm ./wt/param.txt >/dev/null 2>/dev/null || true
	# delete all binaries
	rm ./metric_generator/main >/dev/null 2>/dev/null || true
	rm ./template/in.txt >/dev/null 2>/dev/null || true
	rm ./template/eucledian_distance >/dev/null 2>/dev/null || true
	rm ./wt/serial >/dev/null 2>/dev/null || true
	rm temp.txt >/dev/null 2>/dev/null || true

build:
	# reinitialize the database file 1.txt
	rm ./data/database/1.txt >/dev/null 2>/dev/null || true
	touch ./data/database/1.txt >/dev/null 2>/dev/null || true
	bash -c "ls -l ./data/raw | sed /^total/d | wc -l | xargs > ./data/database/1.txt"
	# make script executable and regerate param file
	chmod +x ./main.sh
	touch ./wt/param.txt
	# compile
	g++-10 -std=c++17 -O2 -o ./metric_generator/main ./metric_generator/main.cpp
	g++-10 -std=c++17 -O2 -o ./template/eucledian_distance ./template/eucledian_distance.cpp
	g++-10 -std=c++17 -O2 -o ./wt/serial ./wt/serial.cpp

run:
	# run the main script
	./main.sh
