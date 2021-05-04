#! /usr/local/bin/zsh

# Author: Kartikey Tewari
# E-mail: kartikeya30@gmail.com


function press_key()
{
    echo "Press key to continue....";
    read -r alpha;
    if [[ $alpha !=  y ]]
    then
        echo "aborting";
        exit;
    fi
}

function process_file()
{
    echo "Processing file - " $1
    echo $(wc -l ./data/raw/$1.txt | awk '{ print $1 }') > ./data/wrangled/$1.wr.txt
    cat ./data/raw/$1.txt >> ./data/wrangled/$1.wr.txt
    ./template/eucledian_distance < ./data/wrangled/$1.wr.txt >> ./data/database/1.txt
}

figlet "Fingerprint Searcher"
for ((i=1;i<=$(ls -l ./data/raw |wc -l)-1;i++)) do
process_file $i
done
press_key

echo "Generating metrics"
./metric_generator/main < ./data/database/1.txt
press_key

echo "Making the wavellet tree and performing search"
echo $(wc -l ./data/auth_candidate/file.txt | awk '{ print $1 }') > temp.txt
cat ./data/auth_candidate/file.txt >> temp.txt
./template/eucledian_distance < temp.txt > param.txt
./wt/serial < ./data/database/1.txt
