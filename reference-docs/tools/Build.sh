PACKAGES="Appearance Bridge Building CityFurniture CityObjectGroup Construction Core Dynamizer Generics LandUse PointCloud Relief Transportation Tunnel Vegetation Versioning WaterBody"

for I in $PACKAGES
do
echo "Building Package $I"
./$I-gen.sh
done

