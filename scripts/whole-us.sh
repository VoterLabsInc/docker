#!/bin/bash
set -x

# create directories
mkdir /home/$USER/whole-us

# install pelias script
alias pelias='$(pwd)/docker/pelias'

# cwd
cd docker/projects/united-states

# configure environment
sed -i '/DATA_DIR/d' .env
echo 'DATA_DIR=/home/'$USER'/whole-us' >> .env

# run build
pelias compose pull
pelias elastic start
pelias elastic wait
pelias elastic create
pelias download all
pelias prepare all
pelias import all
pelias compose up
