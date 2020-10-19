#!/bin/sh

if [! -d "/opt/foundryvtt" ]
  cd /opt/foundryvtt
  cp /host/foundryvtt*.zip .
  unzip -o foundryvtt*.zip
  rm foundryvtt*.zip
fi
node resources/app/main.js --dataPath=/data/foundryvtt
