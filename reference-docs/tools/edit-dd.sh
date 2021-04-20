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

cd ./Data-Dictionaries/AsciiDoc
DD="Appearance.adoc Bridge.adoc Building.adoc CityFurniture.adoc CityObjectGroup.adoc Construction.adoc Core.adoc Dynamizer.adoc Generics.adoc LandUse.adoc PointCloud.adoc Relief.adoc Transportation.adoc Tunnel.adoc Vegetation.adoc Versioning.adoc WaterBody.adoc"
for I in $DD
do
echo $I
cat $I | sed s/.Property.' '*"!"/" !"/g | sed s/"<<-section,.."/"None"/g | sed s/">>  !"/">> [1..1] !"/g >../../../standard/data-dictionaries/$I
done


