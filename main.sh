# Author: Kartikey Tewari
# E-mail: kartikeya30@gmail.com

#!/usr/local/bin/zsh
function press_key()
{
    echo "Press key to continue....";
    read alpha;
}

figlet "Fingerprint Searcher"
echo "Warning: Running this script will delete all previous data and metrics."
echo "Do you still want to proceed? (y/n)"
read var

if [[ $var = y ]]
then
    for ((i=1;i<=$(ls -l ./data/raw |wc -l)-1;i++)) do
    echo "Processing file - " $i
    echo $(wc -l ./data/raw/$i.txt | awk '{ print $1 }') > ./data/wrangled/$i.wr.txt
    cat ./data/raw/$i.txt >> ./data/wrangled/$i.wr.txt
    ./template/eucledian_distance < ./data/wrangled/$i.wr.txt >> ./data/database/1.txt
    done
    press_key

    echo "Generating metrics"
    ./metric_generator/main < ./data/database/1.txt
    press_key

    echo "Building and searching on Wavelet tree"
    # clean the data
    echo "Cleaning the data"
    echo $(wc -l ./data/auth_candidate/file.txt | awk '{ print $1 }') > temp.txt
    cat ./data/auth_candidate/file.txt >> temp.txt

    # pass the data through the template
    echo "Passing the data through the template"
    ./template/eucledian_distance < temp.txt > param.txt

    # make tree and search the value
    echo "Generating the tree and performing search"
    ./wt/serial < ./data/database/1.txt
    cd ..
else
    echo "Process terminated."
fi
