## scapig-scripts

### Pre-requirement

The environment variable SCAPIG_REPOSITORY must be set to the location of the local repository.

### NGINX
#### Publishing
``
cd nginx
docker build -t lb-developer-hub lb-developer-hub
docker build -t lb-gateway lb-gateway
docker tag lb-developer-hub scapig/lb-developer-hub:VERSION
docker tag lb-gateway scapig/lb-gateway:VERSION
docker login
docker push scapig/lb-developer-hub:VERSION
docker push scapig/lb-gateway:VERSION
``

#### Docker compose locally
``
docker-compose build lb-gateway
docker-compose build lb-developer-hub
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

### Start Scapig
``
curl https://raw.githubusercontent.com/scapig/scripts/master/docker-compose.yml --output scapig.yml
docker stack deploy --compose-file scapig.yml scapig
``
