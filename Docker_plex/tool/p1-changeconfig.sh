cp ./data/p1x-config.new.yml ~/docker/docker-mirakurun-epgstation/epgstation/config/config.yml
cp ./data/p1x-sl-enc.js ~/docker/docker-mirakurun-epgstation/epgstation/config/sl-enc.js
cp ./data/p1x-sl-enc-ml.sh ~/docker/docker-mirakurun-epgstation/epgstation/config/sl-enc-ml.sh
cd ~/docker/docker-mirakurun-epgstation
docker-compose down
docker-compose up -d
