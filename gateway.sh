#!/bin/bash
docker rm -f gateway
docker run --dns $(docker inspect -f '{{.NetworkSettings.IPAddress}}' dns) --dns-search simonopitz.me -tid -p 80:80 --name gateway localhost:5000/gateway
