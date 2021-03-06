# Fingerprint Indexing using Serial Wavelet Tree
This project intends to index fingerprint minutiae sets by passing them through templates and searching them in wavelet tree. The codebase is extremely modular and hence different raw data, fingerprint templates as well as different implementation of wavelet tree (parallel and serial) can be used to find the perfect match of reliability, scalability and security. The project is currently under active development, and will soon support more templating methods of fingerprint. It presently supports eucledian algorithm as the templating module and the wavelet tree for searching and indexing module. The script will not work if the data folder is not created and properly configured.

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
- GCC GNU-C compiler
- Bash
- Git
- Make

## Makefile options are:
- default: Deletes all intermediatery files and binaries then recompiles the code and run it again on the database.
- clean: Deletes all intermediatery files and binaries.
- build: Recompiles all the programmes.
- run: Runs the main.sh script.

## Steps to run the programme:
- Populate the database folder correctly. (more on that soon)
- Run the command: `make`

Feel free to contact me at <a href="mailto:kartikeya30@gmail.com">kartikeya30@gmail.com</a>.

