# Fingerprint Indexing Software
This project intends to index fingerprints by passing them through templates and searching them in wavelet tree. The code base is extremely modular and hence different raw data, fingerprint templates as well as different implementation of wavelet tree (parallel and serial) can be used to find the perfect match of reliability, scalability and security. The project is under active development, and will soon support more templating methods of fingerprint. It presently supports `euclidean distance template` as the templating module and the `serially implemented wavelet tree` for searching and indexing database. The script will not work if the data folder is not created and properly configured. The data folder can not be shared because the fingerprint data is not public.

## Project Pipeline:
- Raw Data
- Data Wrangling Script
- Wrangled Data
- Templating Script
- Database file
- Metric Generation Scripts
- Auth Candidate
- Wavelet Tree

## Tech Stack Used:
- C++17
- Python
- Bash
- Git
- Make

## Makefile options are:
- default: Deletes all intermediately files and binaries then recompiles the code and run it again on the database.
- clean: Deletes all intermediately files and binaries.
- build: Recompiles all the code.
- run: Runs the main.sh script.

## Steps to run the program:
- Clone the project using the command: `git clone "https://github.com/kartikeytewari/fingerprint" --depth 1`
- Get in the project using `cd fingerprint`
- Install all dependencies based on the operating system you are using.
Dependencies such as GNU C++ compiler, python3, make and bash will be used.
- Configure the `data` folder using the following commands:
    `mkdir data data/auth_candidate data/database data/raw data/wrangled`
- In the `./data/auth_candidate` folder make a file named `file.txt` containing the x and y coordinates of minutiae of the fingerprint that needs to be searched.
- In the raw.txt folder make a single file for each fingerprint in the database. The files should be named serially for example `1.txt`, `2.txt`, `3.txt` and `4.txt`. Each file should contain x and y coordinates of minutiae points of the fingerprint.
- To run the software, go to root of project and run: `make`.

Feel free to contact me at <a href="mailto:kartikeya30@gmail.com">kartikeya30@gmail.com</a>.
