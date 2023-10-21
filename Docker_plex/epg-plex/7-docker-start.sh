#!/bin/bash
cd ~/docker/docker-mirakurun-epgstation
docker-compose pull
docker-compose build --no-cache
docker-compose up -d
