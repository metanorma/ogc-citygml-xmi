#
# A tool to edit the RTF output from the CityGML 3.0 UML model. The edited files are stored in the
# ./edited sub-directory.
#
# This tool:
#     1) Removes all <<Property>> sterotypes
#     2) Adds the [1..1] multiplicity where needed. 
#     3) Replaces empty references (<<-section,>>) with "None"
#
# Created by Chuck Heazel
# September 2020
# 

cd ./Data-Dictionaries
RTF=`/bin/ls *.rtf`
for I in $RTF
do
echo $I
cat $I | sed s/'\xab'"Property"'\xbb'' '*"!"/" !"/g | sed s/">>"' '*"!"/">> [1..1] !"/g | sed s/"<<-section,>>"/None/g >edited/$I
done


