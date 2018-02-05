## scapig-scripts

This is the repository containing all the scripts required for the API Manager Scapig (http://www.scapig.com)

### Pre-requirement

The environment variable SCAPIG_REPOSITORY must be set to the location of the local repository.

#### Memory Usage
If `docker info` returns "WARNING: No swap limit support", you can enable the memory usage limit with the following:
``
In /etc/default/grub, add or edit:
GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"
sudo update-grub
``

### NGINX
#### Publishing
``
cd nginx
docker build -t lb-gateway lb-gateway
docker tag lb-gateway scapig/lb-gateway
docker login
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

### Pull the latest version
```
docker-compose -f deploy/docker-compose.yml pull
```

### Start Scapig in Dev Environment
``
docker swarm init
docker stack deploy --compose-file deploy/docker-compose.yml scapig
``

### Start Scapig in Production Environment
``
docker swarm init
curl https://raw.githubusercontent.com/scapig/scripts/master/deploy/prod-docker-compose.yml --output docker-compose.yml
docker stack deploy --compose-file docker-compose.yml scapig
``

### Start Web
``
docker run -p9050:9050 -d scapig/web
``
