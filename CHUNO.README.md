## Launch
```bash
# forward db from geonode_data server
$ ssh -L 5432:localhost:5435 chumano.dev2.cec

# import data from sql
sudo apt install postgresql-client
psql -h localhost -p 5435 -d geonode_data -U geonode_data -f ./data/countries.sql
```

```bash
$ pip install uvicorn

# Set your PostGIS database instance URL in the environment
$ export DATABASE_URL=postgresql://username:password@0.0.0.0:5432/postgis
# windows cmd: 
#   set DATABASE_URL=postgresql://geonode_data:geonode_data@0.0.0.0:5432/geonode_data
#   echo %DATABASE_URL%
# windows powershell: 
#   $env:DATABASE_URL="postgresql://geonode_data:geonode_data@localhost:5432/geonode_data"
#   echo $env:DATABASE_URL

$ uvicorn tipg.main:app --reload --reload-dir ./tipg

$ curl http://127.0.0.1:8000/collections/public.nha_quanly/tilejson.json


# Run docker
Tile json url
tipg.gishub.datalink.vn
https://tipg.gishub.datalink.vn/collections/public.countries/tilejson.json

```bash
# --proxy-headers --forwarded-allow-ips '*'
docker compose up -d --no-deps app-uvicorn
docker compose up --no-deps app-uvicorn
```

