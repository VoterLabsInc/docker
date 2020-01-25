USER=$USER

cat >../projects/united-states-test-3-states/pelias.json <<EOF
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
            "datapath": "/home/$USER/test-3-states/geonames",
            "countryCode": "US"
            },
            "openstreetmap": {
            "download": [
                {"sourceURL": "https://download.geofabrik.de/north-america/us/california/norcal-latest.osm.pbf"},
                {"sourceURL": "https://download.geofabrik.de/north-america/us/california/socal-latest.osm.pbf"},
                {"sourceURL": "https://download.geofabrik.de/north-america/us/oregon-latest.osm.pbf"},
                {"sourceURL": "https://download.geofabrik.de/north-america/us/washington-latest.osm.pbf"}
            ],
            "leveldbpath": "/tmp",
            "datapath": "/home/$USER/test-3-states/openstreetmap",
            "import": [
                {"filename": "norcal-latest.osm.pbf"},
                {"filename": "socal-latest.osm.pbf"},
                {"filename": "oregon-latest.osm.pbf"},
                {"filename": "washington-latest.osm.pbf"}
            ]
            },
            "openaddresses": {
            "datapath": "/home/$USER/test-3-states/openaddresses",
            "files": [
                "us/ca/alameda.csv",
                "us/ca/amador.csv",
                "us/ca/berkeley.csv",
                "us/ca/butte.csv",
                "us/ca/calaveras.csv",
                "us/ca/city_of_anaheim.csv",
                "us/ca/city_of_bakersfield.csv",
                "us/ca/city_of_carson.csv",
                "us/ca/city_of_cupertino.csv",
                "us/ca/city_of_elk_grove.csv",
                "us/ca/city_of_hayward.csv",
                "us/ca/city_of_irvine.csv",
                "us/ca/city_of_long_beach.csv",
                "us/ca/city_of_los_angeles.csv",
                "us/ca/city_of_manteca.csv",
                "us/ca/city_of_mountain_view.csv",
                "us/ca/city_of_orange.csv",
                "us/ca/city_of_palo_alto.csv",
                "us/ca/city_of_rancho_cucamonga.csv",
                "us/ca/city_of_riverside.csv",
                "us/ca/city_of_roseville.csv",
                "us/ca/city_of_san_jose.csv",
                "us/ca/city_of_san_luis_obispo.csv",
                "us/ca/city_of_santa_cruz.csv",
                "us/ca/city_of_sunnyvale.csv",
                "us/ca/city_of_temecula.csv",
                "us/ca/city_of_visalia.csv",
                "us/ca/colusa.csv",
                "us/ca/contra_costa.csv",
                "us/ca/del_norte.csv",
                "us/ca/el_dorado.csv",
                "us/ca/fresno.csv",
                "us/ca/glenn.csv",
                "us/ca/humboldt.csv",
                "us/ca/inyo.csv",
                "us/ca/kern.csv",
                "us/ca/kings.csv",
                "us/ca/lake.csv",
                "us/ca/lassen.csv",
                "us/ca/los_angeles.csv",
                "us/ca/madera.csv",
                "us/ca/marin.csv",
                "us/ca/mendocino.csv",
                "us/ca/merced.csv",
                "us/ca/mono.csv",
                "us/ca/monterey.csv",
                "us/ca/napa.csv",
                "us/ca/nevada.csv",
                "us/ca/orange.csv",
                "us/ca/placer.csv",
                "us/ca/plumas.csv",
                "us/ca/riverside.csv",
                "us/ca/sacramento.csv",
                "us/ca/san_benito.csv",
                "us/ca/san_bernardino.csv",
                "us/ca/san_diego.csv",
                "us/ca/san_francisco.csv",
                "us/ca/san_joaquin.csv",
                "us/ca/san_luis_obispo.csv",
                "us/ca/san_mateo.csv",
                "us/ca/santa_barbara.csv",
                "us/ca/santa_clara.csv",
                "us/ca/santa_cruz.csv",
                "us/ca/shasta.csv",
                "us/ca/siskiyou.csv",
                "us/ca/solano.csv",
                "us/ca/sonoma.csv",
                "us/ca/stanislaus.csv",
                "us/ca/sutter.csv",
                "us/ca/tehama.csv",
                "us/ca/trinity.csv",
                "us/ca/tulare.csv",
                "us/ca/tuolumne.csv",
                "us/ca/ventura.csv",
                "us/ca/yolo.csv",
                "us/ca/yuba.csv",
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
                "us/or/yamhill.csv",
                "us/wa/asotin.csv",
                "us/wa/bellingham.csv",
                "us/wa/benton.csv",
                "us/wa/chelan.csv",
                "us/wa/city_of_bellevue.csv",
                "us/wa/city_of_richland.csv",
                "us/wa/city_of_spokane.csv",
                "us/wa/city_of_tacoma.csv",
                "us/wa/city_of_yakima.csv",
                "us/wa/clallam.csv",
                "us/wa/clark.csv",
                "us/wa/cowlitz.csv",
                "us/wa/douglas.csv",
                "us/wa/ferry.csv",
                "us/wa/franklin.csv",
                "us/wa/garfield.csv",
                "us/wa/grant.csv",
                "us/wa/island.csv",
                "us/wa/jefferson.csv",
                "us/wa/king.csv",
                "us/wa/kitsap.csv",
                "us/wa/kittitas.csv",
                "us/wa/lewis.csv",
                "us/wa/mason.csv",
                "us/wa/okanogan.csv",
                "us/wa/pacific.csv",
                "us/wa/pend_oreille.csv",
                "us/wa/pierce.csv",
                "us/wa/san_juan.csv",
                "us/wa/skagit.csv",
                "us/wa/snohomish.csv",
                "us/wa/snohomish_county.csv",
                "us/wa/spokane.csv",
                "us/wa/thurston.csv",
                "us/wa/walla_walla.csv"
            ]
            },
            "polyline": {
            "datapath": "/home/$USER/test-3-states/polylines",
            "files": [ "extract.0sv" ]
            },
            "whosonfirst": {
            "datapath": "/home/$USER/test-3-states/whosonfirst",
            "importPostalcodes": true,
            "importPlace": [
                "85688637",
                "85688513",
                "85688623"
                ]
            },
            "interpolation": {
            "download": {
                "tiger": {
                "datapath": "/home/$USER/test-3-states/tiger",
                "states": [
                    { "state_code": 41, "county_code": 67, "name": "Washington County, OR" }
                ]
                }
            }
            }
        }
    }

EOF