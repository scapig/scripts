#!/bin/bash

PROJECT=$1
(cd $TAPI_REPOSITORY/$PROJECT; sbt "universal:package-zip-tarball")
docker-compose build ${PROJECT}.docker
