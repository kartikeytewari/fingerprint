rm ../data/database/1.txt
touch ../data/database/1.txt
python -c "print $(ls -l ../data/wrangled |wc -l) - int(1)" > ../data/database/1.txt

for ((i=1;i<=$(ls -l ../data/wrangled |wc -l)-1;i++)) do
echo "Templating file - " $i
cp ../data/wrangled/$i.wr.txt in.txt
./eucledian_distance.out < in.txt >> ../data/database/1.txt
rm in.txt
done
