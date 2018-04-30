#!/bin/bash
sudo docker run -d --name kafka -p 2181:2181 -p 9092:9092 --env ADVERTISED_HOST=10.0.0.7 --env ADVERTISED_PORT=9092 spotify/kafka
