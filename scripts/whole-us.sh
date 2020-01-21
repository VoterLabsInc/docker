# give root privileges to this bash script
if [[ $EUID -ne 0 ]];
then
    exec sudo /bin/bash "$0" "$@"
fi

#!/bin/bash
set -x

# create directories
mkdir /code /data

# set proper permissions. make sure the user matches your `DOCKER_USER` setting in `.env`
chown 1000:1000 /code /data

# clone repo
cd docker

# install pelias script
ln -s "$(pwd)/pelias" /usr/local/bin/pelias

# cwd
cd projects/united-states

# configure environment
sed -i '/DATA_DIR/d' .env
echo 'DATA_DIR=/data' >> .env

# run build
pelias compose pull
pelias elastic start
pelias elastic wait
pelias elastic create
pelias download all
pelias prepare all
pelias import all
pelias compose up
