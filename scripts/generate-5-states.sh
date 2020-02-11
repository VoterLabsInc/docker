USER=$USER
DOCKER_USER="$""{DOCKER_USER}"
DATA_DIR="$""{DATA_DIR}"

cat >./docker/projects/united-states-test-5-states/pelias.json <<EOF
    {
        "logger": {
            "level": "info",
            "timestamp": false
        },
        "esclient": {
            "apiVersion": "6.8",
            "hosts": [
            { "host": "elasticsearch" }
            ]
        },
        "elasticsearch": {
            "settings": {
            "index": {
                "refresh_interval": "10s",
                "number_of_replicas": "0",
                "number_of_shards": "4"
            }
            }
        },
        "acceptance-tests": {
            "endpoints": {
            "docker": "http://api:4000/v1/"
            }
        },
        "api": {
            "services": {
            "pip": { "url": "http://pip:4200" },
            "libpostal": { "url": "http://libpostal:4400" },
            "placeholder": { "url": "http://placeholder:4100" },
            "interpolation": { "url": "http://interpolation:4300" }
            }
        },
        "imports": {
            "adminLookup": {
            "enabled": true
            },
            "geonames": {
            "datapath": "/home/$USER/test-5-states/geonames",
            "countryCode": "US"
            },
            "openstreetmap": {
            "download": [
                {"sourceURL": "https://download.geofabrik.de/north-america/us/florida-latest.osm.pbf"},
                {"sourceURL": "https://download.geofabrik.de/north-america/us/illinois-latest.osm.pbf"},
                {"sourceURL": "https://download.geofabrik.de/north-america/us/new-york-latest.osm.pbf"},
                {"sourceURL": "https://download.geofabrik.de/north-america/us/montana-latest.osm.pbf"},
                {"sourceURL": "https://download.geofabrik.de/north-america/us/oregon-latest.osm.pbf"}
            ],
            "leveldbpath": "/tmp",
            "datapath": "/home/$USER/test-5-states/openstreetmap",
            "import": [
                {"filename": "florida-latest.osm.pbf"},
                {"filename": "illinois-latest.osm.pbf"},
                {"filename": "new-york-latest.osm.pbf"},
                {"filename": "montana-latest.osm.pbf"},
                {"filename": "oregon-latest.osm.pbf"}
            ]
            },
            "openaddresses": {
            "datapath": "/home/$USER/test-5-states/openaddresses",
            "files": [
                "us/fl/_loveland.csv",
                "us/fl/alachua.csv",
                "us/fl/bay.csv",
                "us/fl/brevard.csv",
                "us/fl/broward.csv",
                "us/fl/charlotte.csv",
                "us/fl/citrus.csv",
                "us/fl/city_of_fort_lauderdale.csv",
                "us/fl/city_of_gainesville.csv",
                "us/fl/city_of_key_biscayne.csv",
                "us/fl/city_of_lakeland.csv",
                "us/fl/city_of_pinellas_park.csv",
                "us/fl/city_of_west_palm_beach.csv",
                "us/fl/clay.csv",
                "us/fl/collier.csv",
                "us/fl/desoto.csv",
                "us/fl/duval.csv",
                "us/fl/escambia.csv",
                "us/fl/flagler.csv",
                "us/fl/gulf.csv",
                "us/fl/hernando.csv",
                "us/fl/highlands.csv",
                "us/fl/hillsborough.csv",
                "us/fl/indian_river.csv",
                "us/fl/lake.csv",
                "us/fl/lee.csv",
                "us/fl/leon.csv",
                "us/fl/manatee.csv",
                "us/fl/marion.csv",
                "us/fl/martin.csv",
                "us/fl/miami.csv",
                "us/fl/nassau.csv",
                "us/fl/okaloosa.csv",
                "us/fl/orange_county.csv",
                "us/fl/osceola.csv",
                "us/fl/palm_beach_county.csv",
                "us/fl/pasco.csv",
                "us/fl/pinellas.csv",
                "us/fl/putnam.csv",
                "us/fl/santa_rosa.csv",
                "us/fl/sarasota.csv",
                "us/fl/seminole.csv",
                "us/fl/st-johns.csv",
                "us/fl/st-lucie.csv",
                "us/fl/statewide.csv",
                "us/fl/sumter.csv",
                "us/fl/volusia.csv",
                "us/fl/walton.csv",
                "us/il/adams.csv",
                "us/il/boone.csv",
                "us/il/champaign.csv",
                "us/il/christian.csv",
                "us/il/city-of-ofallon.csv",
                "us/il/city_of_aurora.csv",
                "us/il/city_of_chicago.csv",
                "us/il/city_of_east_peoria.csv",
                "us/il/city_of_evanston.csv",
                "us/il/city_of_naperville.csv",
                "us/il/city_of_schaumburg.csv",
                "us/il/city_of_west_peoria.csv",
                "us/il/clark.csv",
                "us/il/coles.csv",
                "us/il/cook.csv",
                "us/il/cumberland.csv",
                "us/il/douglas.csv",
                "us/il/dupage.csv",
                "us/il/effingham.csv",
                "us/il/henry.csv",
                "us/il/jackson.csv",
                "us/il/jersey.csv",
                "us/il/kane.csv",
                "us/il/kankakee.csv",
                "us/il/kendall.csv",
                "us/il/knox.csv",
                "us/il/lake.csv",
                "us/il/lawrence.csv",
                "us/il/lee.csv",
                "us/il/logan.csv",
                "us/il/macon.csv",
                "us/il/macoupin.csv",
                "us/il/massac.csv",
                "us/il/mcdonough.csv",
                "us/il/mchenry.csv",
                "us/il/mclean.csv",
                "us/il/menard.csv",
                "us/il/morgan.csv",
                "us/il/moultrie.csv",
                "us/il/peoria.csv",
                "us/il/piatt.csv",
                "us/il/putnam.csv",
                "us/il/randolph.csv",
                "us/il/schuyler.csv",
                "us/il/shelby.csv",
                "us/il/st_clair.csv",
                "us/il/stephenson.csv",
                "us/il/tazewell.csv",
                "us/il/vermilion.csv",
                "us/il/white.csv",
                "us/il/whiteside.csv",
                "us/il/will.csv",
                "us/il/williamson.csv",
                "us/il/winnebago.csv",
                "us/il/woodford.csv",
                "us/mt/beaverhead.csv",
                "us/mt/big_horn.csv",
                "us/mt/blaine.csv",
                "us/mt/broadwater.csv",
                "us/mt/carbon.csv",
                "us/mt/carter.csv",
                "us/mt/cascade.csv",
                "us/mt/chouteau.csv",
                "us/mt/custer.csv",
                "us/mt/daniels.csv",
                "us/mt/dawson.csv",
                "us/mt/deer_lodge.csv",
                "us/mt/fallon.csv",
                "us/mt/fergus.csv",
                "us/mt/flathead.csv",
                "us/mt/gallatin.csv",
                "us/mt/garfield.csv",
                "us/mt/glacier.csv",
                "us/mt/golden_valley.csv",
                "us/mt/granite.csv",
                "us/mt/helena.csv",
                "us/mt/hill.csv",
                "us/mt/jefferson.csv",
                "us/mt/judith_basin.csv",
                "us/mt/lake.csv",
                "us/mt/liberty.csv",
                "us/mt/lincoln.csv",
                "us/mt/madison.csv",
                "us/mt/mccone.csv",
                "us/mt/meagher.csv",
                "us/mt/mineral.csv",
                "us/mt/missoula.csv",
                "us/mt/musselshell.csv",
                "us/mt/park.csv",
                "us/mt/petroleum.csv",
                "us/mt/phillips.csv",
                "us/mt/pondera.csv",
                "us/mt/powder_river.csv",
                "us/mt/powell.csv",
                "us/mt/prairie.csv",
                "us/mt/ravalli.csv",
                "us/mt/richland.csv",
                "us/mt/roosevelt.csv",
                "us/mt/rosebud.csv",
                "us/mt/sanders.csv",
                "us/mt/sheridan.csv",
                "us/mt/silverbow.csv",
                "us/mt/statewide.csv",
                "us/mt/stillwater.csv",
                "us/mt/sweet_grass.csv",
                "us/mt/teton.csv",
                "us/mt/toole.csv",
                "us/mt/treasure.csv",
                "us/mt/valley.csv",
                "us/mt/wheatland.csv",
                "us/mt/wibaux.csv",
                "us/mt/yellowstone.csv",
                "us/ny/broome.csv",
                "us/ny/city_of_new_york.csv",
                "us/ny/city_of_rochester.csv",
                "us/ny/erie.csv",
                "us/ny/orange.csv",
                "us/ny/statewide.csv",
                "us/ny/sullivan.csv",
                "us/ny/westchester.csv",
                "us/or/baker.csv",
                "us/or/benton.csv",
                "us/or/city_of_albany.csv",
                "us/or/city_of_corvallis.csv",
                "us/or/city_of_salem.csv",
                "us/or/clackamas.csv",
                "us/or/clatsop.csv",
                "us/or/coos.csv",
                "us/or/crook.csv",
                "us/or/curry.csv",
                "us/or/deschutes.csv",
                "us/or/douglas.csv",
                "us/or/grant.csv",
                "us/or/gresham.csv",
                "us/or/hood_river.csv",
                "us/or/jackson.csv",
                "us/or/jefferson.csv",
                "us/or/josephine.csv",
                "us/or/klamath.csv",
                "us/or/lake.csv",
                "us/or/lane.csv",
                "us/or/linn.csv",
                "us/or/malheur.csv",
                "us/or/marion.csv",
                "us/or/marion_and_polk.csv",
                "us/or/multnomah.csv",
                "us/or/oregon_city.csv",
                "us/or/portland.csv",
                "us/or/portland_metro.csv",
                "us/or/sherman.csv",
                "us/or/tillamook.csv",
                "us/or/umatilla.csv",
                "us/or/wasco.csv",
                "us/or/washington.csv",
                "us/or/wheeler.csv",
                "us/or/yamhill.csv"
            ]
            },
            "polyline": {
            "datapath": "/home/$USER/test-5-states/polylines",
            "files": [ "extract.0sv" ]
            },
            "whosonfirst": {
            "datapath": "/home/$USER/test-5-states/whosonfirst",
            "importPostalcodes": true,
            "importPlace": [
                "85688651",
                "85688697",
                "85688617",
                "85688543",
                "85688513"
                ]
            },
            "interpolation": {
            "download": {
                "tiger": {
                "datapath": "/home/$USER/test-5-states/tiger",
                "states": [
                    { "state_code": 41, "county_code": 67, "name": "Washington County, OR" }
                ]
                }
            }
            }
        }
    }

EOF

cat >./docker/projects/united-states-test-5-states/docker-compose.yml <<EOF
version: '3'
networks:
  default:
    driver: bridge
services:
  libpostal:
    image: pelias/libpostal-service
    container_name: pelias_libpostal
    user: ${DOCKER_USER}
    restart: always
    ports: [ "4400:4400" ]
  schema:
    image: pelias/schema:master
    container_name: pelias_schema
    user: ${DOCKER_USER}
    volumes:
      - "./docker/projects/united-states-test-5-states/pelias.json:/home/$USER/lat-lon-tool/pelias.json"
  api:
    image: pelias/api:master
    container_name: pelias_api
    user: ${DOCKER_USER}
    restart: always
    environment: [ "PORT=4000" ]
    ports: [ "4000:4000" ]
    volumes:
      - "./docker/projects/united-states-test-5-states/pelias.json:/home/$USER/lat-lon-tool/pelias.json"
  placeholder:
    image: pelias/placeholder:master
    container_name: pelias_placeholder
    user: ${DOCKER_USER}
    restart: always
    environment: [ "PORT=4100" ]
    ports: [ "4100:4100" ]
    volumes:
      - "./docker/projects/united-states-test-5-states/pelias.json:/home/$USER/lat-lon-tool/pelias.json"
      - "${DATA_DIR}:/home/$USER/test-5-states"
  whosonfirst:
    image: pelias/whosonfirst:master
    container_name: pelias_whosonfirst
    user: ${DOCKER_USER}
    volumes:
      - "./docker/projects/united-states-test-5-states/pelias.json:/home/$USER/lat-lon-tool/pelias.json"
      - "${DATA_DIR}:/home/$USER/test-5-states"
  openstreetmap:
    image: pelias/openstreetmap:master
    container_name: pelias_openstreetmap
    user: ${DOCKER_USER}
    volumes:
      - "./docker/projects/united-states-test-5-states/pelias.json:/home/$USER/lat-lon-tool/pelias.json"
      - "${DATA_DIR}:/home/$USER/test-5-states"
  openaddresses:
    image: pelias/openaddresses:master
    container_name: pelias_openaddresses
    user: ${DOCKER_USER}
    volumes:
      - "./docker/projects/united-states-test-5-states/pelias.json:/home/$USER/lat-lon-tool/pelias.json"
      - "${DATA_DIR}:/home/$USER/test-5-states"
  geonames:
    image: pelias/geonames:master
    container_name: pelias_geonames
    user: ${DOCKER_USER}
    volumes:
      - "./docker/projects/united-states-test-5-states/pelias.json:/home/$USER/lat-lon-tool/pelias.json"
      - "${DATA_DIR}:/home/$USER/test-5-states"
  csv-importer:
    image: pelias/csv-importer:master
    container_name: pelias_csv_importer
    user: ${DOCKER_USER}
    volumes:
      - "./docker/projects/united-states-test-5-states/pelias.json:/home/$USER/lat-lon-tool/pelias.json"
      - "${DATA_DIR}:/home/$USER/test-5-states"
  transit:
    image: pelias/transit:master
    container_name: pelias_transit
    user: ${DOCKER_USER}
    volumes:
      - "./docker/projects/united-states-test-5-states/pelias.json:/home/$USER/lat-lon-tool/pelias.json"
      - "${DATA_DIR}:/home/$USER/test-5-states"
  polylines:
    image: pelias/polylines:master
    container_name: pelias_polylines
    user: ${DOCKER_USER}
    volumes:
      - "./docker/projects/united-states-test-5-states/pelias.json:/home/$USER/lat-lon-tool/pelias.json"
      - "${DATA_DIR}:/home/$USER/test-5-states"
  interpolation:
    image: pelias/interpolation:master
    container_name: pelias_interpolation
    user: $DOCKER_USER
    restart: always
    environment: [ "PORT=4300" ]
    ports: [ "4300:4300" ]
    volumes:
      - "./docker/projects/united-states-test-5-states/pelias.json:/home/$USER/lat-lon-tool/pelias.json"
      - "${DATA_DIR}:/home/$USER/test-5-states"
  pip:
    image: pelias/pip-service:master
    container_name: pelias_pip-service
    user: ${DOCKER_USER}
    restart: always
    environment: [ "PORT=4200" ]
    ports: [ "4200:4200" ]
    volumes:
      - "./docker/projects/united-states-test-5-states/pelias.json:/home/$USER/lat-lon-tool/pelias.json"
      - "${DATA_DIR}:/home/$USER/test-5-states"
  elasticsearch:
    image: pelias/elasticsearch:6.8.5
    container_name: pelias_elasticsearch
    user: ${DOCKER_USER}
    restart: always
    environment: [ "ES_JAVA_OPTS=-Xmx8g" ]
    ports: [ "9200:9200", "9300:9300" ]
    volumes:
      - "${DATA_DIR}/elasticsearch:/usr/share/elasticsearch/test"
    ulimits:
      memlock:
        soft: -1
        hard: -1
      nofile:
        soft: 65536
        hard: 65536
    cap_add: [ "IPC_LOCK" ]
  fuzzy-tester:
    image: pelias/fuzzy-tester:master
    container_name: pelias_fuzzy_tester
    user: ${DOCKER_USER}
    restart: "no"
    command: "--help"
    volumes:
      - "./docker/projects/united-states-test-5-states/pelias.json:/home/$USER/lat-lon-tool/pelias.json"
      - "./docker/projects/united-states-test-5-states/test_cases:/home/$USER/lat-lon-tool/pelias/fuzzy-tester/test_cases"
EOF