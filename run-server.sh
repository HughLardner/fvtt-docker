#!/bin/sh 
DIR = "."
cd /app/foundryvtt
if [ "$(ls -A $DIR)" ]; then
  cp /host/foundryvtt*.zip .
  unzip -o foundryvtt*.zip
  rm foundryvtt*.zip
fi
node resources/app/main.js --dataPath=/data/foundryvtt
