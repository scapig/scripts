## scapig-scripts

### Build NGINX
``
cd bin
docker-compose build scapig-nginx-gateway.docker
docker-compose build scapig-nginx-documentation.docker
``

### Build Scapig
``
bin/build-all.sh
``

### Start / Stop Scapig
``
bin/start.sh
bin/stop.sh
``
