#!/bin/bash

cd /minecraft

if [ ! -f "server.jar" ]; then
  echo "server.jar does not exist , first run detected. accept EULA..."
  cp /server.jar ./server.jar

  # EULAに同意する
  echo "true" | java -Xmx4096M -Xms4096M -jar server.jar
else
  echo "Starting server..."
  java -Xmx4096M -Xms4096M -jar server.jar
fi
