#!/bin/bash

PROJECT=$1
(cd $SCAPIG_REPOSITORY/$PROJECT; sbt "universal:package-zip-tarball")
docker-compose build ${PROJECT}
