#!/bin/bash

#sudo docker build -t apache/rocketmq-namesrv:4.2.0 .
sudo docker build --rm --build-arg version=4.2.0  -t apache/rocketmq-namesrv:4.2.0 .
