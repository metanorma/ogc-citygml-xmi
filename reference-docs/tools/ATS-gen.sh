#
# A tool to generate AsciiDoc formatted Abstract Test files for 
# the CityGML 3.0 Conceptual Model. A copy of this script should be created for 
# each package. The only difference is in the values of the variables.
#
# This tool uses a set of template files, one for each class type. Sed commands 
# replace tokens in the template with values from the script variables. The script 
# variables are also used to build the file names for the output.
#
# Created by Chuck Heazel
# January, 2020
# 

# First define the variables
# The package names

PKG="Appearance Bridge Building CityFurniture CityObjectGroup Construction Core Dynamizer Generics LandUse PointCloud Relief Transportation Tunnel Vegetation Versioning Waterbody"

for I in $PKG
do

echo Processing $I

J=`echo $I | tr [:upper:] [:lower:]`

cat ./Templates/ATS_Package_Classes_Template.adoc | sed s/"CLASS"/$I/g | sed s/"PACKAGE"/$I/g | sed s/"LPACK"/$J/g | sed s/"REFF"/"<<"$I/ >../standard/abstract_tests/$I/ATS_`echo $I`_Classes.adoc

cat ./Templates/ATS_Package_Boundaries_Template.adoc | sed s/"CLASS"/$I/g | sed s/"PACKAGE"/$I/g | sed s/"LPACK"/$J/g | sed s/"REFF"/"<<"$I/ >../standard/abstract_tests/$I/ATS_`echo $I`_Boundaries.adoc

cat ./Templates/ATS_Package_ADE_Use_Template.adoc | sed s/"CLASS"/$I/g | sed s/"PACKAGE"/$I/g | sed s/"LPACK"/$J/g | sed s/"REFF"/"<<"$I/ >../standard/abstract_tests/$I/ATS_`echo $I`_ADE_Use.adoc

done
