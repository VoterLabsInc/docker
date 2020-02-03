# set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

#!/bin/bash
set -x

# create directories
mkdir /home/$USER/northwestern

# cwd
cd docker/projects/united-states-northwestern

# configure environment
sed -i '/DATA_DIR/d' .env
echo 'DATA_DIR=/home/'$USER'/northwestern' >> .env

# run build

function pelias () {
  $DIR/../pelias compose pull
  $DIR/../pelias elastic start
  $DIR/../pelias elastic wait
  $DIR/../pelias elastic create
  $DIR/../pelias download all
  $DIR/../pelias prepare all
  $DIR/../pelias import all
  $DIR/../pelias compose up
}

pelias
