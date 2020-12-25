for ((i=1;i<=$(ls -l ../data/raw |wc -l)-1;i++)) do
echo "Cleaning the file - " $i
echo $(wc -l ../data/raw/$i.txt | awk '{ print $1 }') > in.txt
cat ../data/raw/$i.txt >> in.txt
cp in.txt ../data/wrangled/$i.wr.txt
done

rm in.txt
