# Author: Kartikey Tewari
# E-mail: kartikeya30@gmail.com


# reinitialize the database file 1.txt
rm ../data/database/1.txt
touch ../data/database/1.txt
ls -l ../data/wrangled | sed /^total/d | wc -l | xargs > ../data/database/1.txt

# template all files and store them in database
for ((i=1;i<=$(ls -l ../data/wrangled |wc -l)-1;i++)) do
echo "Templating file - " $i
cp ../data/wrangled/$i.wr.txt in.txt
./eucledian_distance < in.txt >> ../data/database/1.txt
rm in.txt
done
