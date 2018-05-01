#!/bin/bash
#sudo docker run -d -p 9876:9876 -v /Users/sylar/Documents/docker/VOLUME/rocketmq/conf/broker.conf:/opt/rocketmq-4.2.0/conf/broker.conf --name rmqnamesrv apache/rocketmq-namesrv:4.2.0
sudo docker run -dti --name namesrv \
    -p 9876:9876 \
    -e "JAVA_OPT_EXT=-server -Xms128m -Xmx128m -Xmn128m" \
    apache/rocketmq-namesrv:4.2.0
