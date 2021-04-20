FILES=`/bin/ls *gen.sh`

for I in $FILES
do
cat $I | sed 's/\r$//' > temp_$I
mv temp_$I $I
done

