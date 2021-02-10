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
    echo "Cleaning all data"
    cd data_wrangler
    ./dw_passer.sh 2>/dev/null
    press_key

    echo "Passing data through template"
    cd ../template
    ./feeder.sh 2>/dev/null
    press_key

    echo "Generating metrics"
    cd ../metric_generator
    ./metric_generator.sh 2>/dev/null
    press_key

    echo "Building and searching on Wavelet tree"
    cd ../wt
    ./gen_search.sh 2>/dev/null
    cd ..
else
    echo "Process terminated."
fi
