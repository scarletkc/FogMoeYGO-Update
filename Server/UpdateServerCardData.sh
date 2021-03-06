#!/bin/bash

set -e
cd /home/ubuntu/ygoserver/ygopro
rm -rf ygopro-FogMoe-card-database
git clone -b without-pics https://api.mtr.pub/scarletkc/ygopro-FogMoe-card-database.git
cp -rf ygopro-FogMoe-card-database/* ./ && rm -r ygopro-FogMoe-card-database
mv FogMoe-cards.cdb cards.cdb
pm2 restart 0

echo "Update complete!"