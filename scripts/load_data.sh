local_dir=$(dirname $(readlink -f $0))
data="${local_dir}/../data"

mkdir -p $data

cd data/.. 

options="--no-check-certificate"


F2018="https://www.data.gouv.fr/fr/datasets/r/1be77ca5-dc1b-4e50-af2b-0240147e0346"
F2017="https://www.data.gouv.fr/fr/datasets/r/7161c9f2-3d91-4caf-afa2-cfe535807f04"
F2016="https://www.data.gouv.fr/fr/datasets/r/0ab442c5-57d1-4139-92c2-19672336401c"
F2015="https://www.data.gouv.fr/fr/datasets/r/09f013c5-9531-444b-ab6c-7a0e88efd77d"
F2014="https://www.data.gouv.fr/fr/datasets/r/dc13282f-3c7a-4fac-b1f3-3939e39d45f6"

if [ ! -e data/IMMO2018 ]
then
echo "Loading 2018"
touch data/IMMO2018
wget $options $F2018 -O data/IMMO2018
fi
if [ ! -e data/IMMO2017 ]
then
echo "Loading 2017"
touch data/IMMO2017
wget $options $F2017 -O data/IMMO2017
fi
if [ ! -e data/IMMO2016 ]
then
echo "Loading 2016"
touch data/IMMO2016
wget $options $F2016 -O data/IMMO2016
fi
if [ ! -e data/IMMO2015 ]
then
echo "Loading 2015"
touch data/IMMO2015
wget $options $F2015 -O data/IMMO2015
fi
if [ ! -e data/IMMO2014 ]
then
echo "Loading 2014"
touch data/IMMO2014
wget $options $F2014 -O data/IMMO2014
fi
