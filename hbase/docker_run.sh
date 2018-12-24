#!/bin/bash
#sudo docker-compose -f docker-compose.yml build
#sudo docker-compose -f docker-compose.yml up -d

sudo docker run -dit --name hbase \
    -p 2181:2181 \
    -p 8080:8080 \
    -p 8085:8085 \
    -p 9090:9090 \
    -p 9095:9095 \
    -p 16000:16000 \
    -p 16010:16010 \
    -p 16201:16201 \
    -p 16301:16301 \
    -h hbase_host \
    -m 1G \
    --privileged \
    harisekhon/hbase



