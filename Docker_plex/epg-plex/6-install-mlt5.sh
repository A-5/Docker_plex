#!/bin/bash
cd ~/git
git clone https://github.com/l3tnun/docker-mirakurun-epgstation.git
cd docker-mirakurun-epgstation
cp docker-compose-sample.yml docker-compose.yml
cp epgstation/config/config.yml.template epgstation/config/config.yml
cp epgstation/config/enc.js.template epgstation/config/enc.js
cp epgstation/config/operatorLogConfig.sample.yml epgstation/config/operatorLogConfig.yml
cp epgstation/config/epgUpdaterLogConfig.sample.yml epgstation/config/epgUpdaterLogConfig.yml
cp epgstation/config/serviceLogConfig.sample.yml epgstation/config/serviceLogConfig.yml
git clone https://github.com/Chinachu/Mirakurun
cd ~/2023temp/epg-plex
cp ./data/new-MirakurunDockerfile ~/git/docker-mirakurun-epgstation/Mirakurun/docker/Dockerfile
cp ./data/tuners-mlt5.yml ~/git/docker-mirakurun-epgstation/Mirakurun/config/tuners.yml
cp ./data/channels.yml ~/git/docker-mirakurun-epgstation/Mirakurun/config/channels.yml
cp ./data/new-docker-compose-mlt5.yml ~/git/docker-mirakurun-epgstation/docker-compose.yml
cd ~/git/docker-mirakurun-epgstation
docker-compose pull
docker-compose build --no-cache
docker-compose up -d
