# The script runs through all the files in the ../data/raw folder.
# For each file it caluculates the number of lines in the template.
# Since each line represents a minutae coordinates this is the number
# of minutaes to be processed. This is written in the wrangled file
# Then the raw file is copied over to the wrangled file

for ((i=1;i<=$(ls -l ../data/raw |wc -l)-1;i++)) do
echo "Cleaning the file - " $i
echo $(wc -l ../data/raw/$i.txt | awk '{ print $1 }') > in.txt
cat ../data/raw/$i.txt >> in.txt
cp in.txt ../data/wrangled/$i.wr.txt
done

rm in.txt
