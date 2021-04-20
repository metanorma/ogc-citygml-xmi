
L=`ls`
for I in $L 
do
K=`ls $I`
echo "=== Conformance Class "$I > ATS_$I.adoc
echo >> ATS_$I.adoc
for M in $K
do
echo "include::"$I"/"$M"[]" >> ATS_$I.adoc
echo >> ATS_$I.adoc
done
done

