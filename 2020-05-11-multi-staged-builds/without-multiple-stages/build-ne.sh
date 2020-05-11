#!/bin/bash

docker image build -t ne-build -f Dockerfile.build .

docker container create --name ne-build-container ne-build
docker container cp ne-build-container:/opt/ne.tgz ne.tgz
docker container rm ne-build-container

docker image build -t ne-editor -f Dockerfile.package .

rm ne.tgz
