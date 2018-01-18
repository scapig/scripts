## scapig-scripts

### Pre-requirement

The environment variable SCAPIG_REPOSITORY must be set to the location of the local repository.

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
