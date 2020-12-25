figlet "Fingerprint Searcher"
echo "Warning: Running this script will delete all previous data and metrics."
echo "Do you still want to proceed? (y/n)"
read var

if [[ $var = y ]]
then
    echo "Building the project"
    ./build.sh 2>/dev/null
    read alpha
    echo "Cleaning all data"
    cd data_wrangler
    ./dw_passer.sh 2>/dev/null
    read alpha
    echo "Passing data through template"
    cd ../template
    ./feeder.sh 2>/dev/null
    read alpha
    echo "Generating metrics"
    cd ../metric_generator
    ./metric_generator.sh 2>/dev/null
    read alpha
    echo "Building and searching on Wavelet tree"
    cd ../wt
    ./gen_search.sh 2>/dev/null
    cd ..
else
    echo "Process terminated."
fi
