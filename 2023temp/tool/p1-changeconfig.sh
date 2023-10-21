cp ./data/p1x-config.new.yml ~/git/docker-mirakurun-epgstation/epgstation/config/config.yml
cp ./data/p1x-sl-enc.js ~/git/docker-mirakurun-epgstation/epgstation/config/sl-enc.js
cp ./data/p1x-sl-enc-ml.sh ~/git/docker-mirakurun-epgstation/epgstation/config/sl-enc-ml.sh
cd ~/git/docker-mirakurun-epgstation
docker-compose down
docker-compose up -d
