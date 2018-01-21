## scapig-scripts

### Pre-requirement

The environment variable SCAPIG_REPOSITORY must be set to the location of the local repository.

### NGINX
#### Publishing
``
cd nginx
docker build -t lb-developer-hub developer-hub
docker build -t lb-gateway gateway
docker tag lb-developer-hub scapig/lb-developer-hub:VERSION
docker tag lb-gateway scapig/lb-gateway:VERSION
docker login
docker push scapig/lb-developer-hub:VERSION
docker push scapig/lb-gateway:VERSION
``

#### Docker compose locally
``
docker-compose build lb-gateway.docker
docker-compose build lb-developer-hub.docker
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
