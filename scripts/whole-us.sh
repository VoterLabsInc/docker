# set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

#!/bin/bash
set -x

# create directories
mkdir /home/$USER/united-states

# cwd
cd docker/projects/united-states

# configure environment
sed -i '/DATA_DIR/d' .env
echo 'DATA_DIR=/home/'$USER'/united-states' >> .env

#pelias script
alias pelias='../../pelias'

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
