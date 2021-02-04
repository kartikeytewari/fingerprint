# Fingerprint Indexing using Serial Wavelet Tree
This project intends to index fingerprint minutiae by passing them through templates and searching them in wavelet tree. The codebase is extremely modular and hence different raw data, fingerprint templates as well as different implementation of wavelet tree can be used to find the perfect match of reliability, scalability and security. The project is currently under active development, and will soon support more templating methods of the fingerprint. It presently supports eucledian algorithm as the templating module and the wavelet tree for searching and indexing module. The script will not work if the data folder is not created and properly configured.

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

## Steps to run the programme:
- Populate the data folder in root of project (more on that soon)
- Build the files using the command: `make`
- Make the main.sh script executable by: `chmod +x main.sh`
- Run the programme using: `./main.sh`

Feel free to contact me at <a href="mailto:kartikeya30@gmail.com">kartikeya30@gmail.com</a>.
