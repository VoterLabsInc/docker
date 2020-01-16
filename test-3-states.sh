#!/bin/bash
set -x

# create directories
mkdir /code /test

# set proper permissions. make sure the user matches your `DOCKER_USER` setting in `.env`
chown 1000:1000 /code /test

# clone repo
cd /code
git clone https://github.com/VoterLabsInc/docker.git
cd docker

# install pelias script
ln -s "$(pwd)/pelias" /usr/local/bin/pelias

# cwd
cd projects/united-states-test-3-states

# configure environment
sed -i '/DATA_DIR/d' .env
echo 'DATA_DIR=/test' >> .env

# run build
pelias compose pull
pelias elastic start
pelias elastic wait
pelias elastic create
pelias download all
pelias prepare all
pelias import all
pelias compose up
