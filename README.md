## scapig-scripts

### Pre-requirement

The environment variable SCAPIG_REPOSITORY must be set to the location of the local repository.

### NGINX
#### Publishing
``
cd nginx
docker build -t lb-developer-hub lb-developer-hub
docker build -t lb-gateway lb-gateway
docker tag lb-developer-hub scapig/lb-developer-hub
docker tag lb-gateway scapig/lb-gateway
docker login
docker push scapig/lb-developer-hub
docker push scapig/lb-gateway
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


``
bin/start.sh
bin/stop.sh
``

### Start Scapig
``
docker swarm init
curl https://raw.githubusercontent.com/scapig/scripts/master/docker-compose.yml --output scapig.yml
docker stack deploy --compose-file scapig.yml scapig
``

### Start Web
``
docker run -p9050:9050 -d scapig/web
``
