#!/bin/bash
# broker 默认需要8G内存， 在docker环境下，需要手工指定，如：-Xms128m -Xmx128m -Xmn128m
# 网络环境很重要， 在创建容器时需要指定，如： --link rmqnamesrv:rmqnamesrv -e "NAMESRV_ADDR=rmqnamesrv:9876"

#sudo docker run -d -p 10911:10911 -p 10909:10909 -v /Users/sylar/Documents/docker/VOLUME/rocketmq/conf/broker.conf:/opt/rocketmq-4.2.0/conf/broker.conf --name rmqbroker --link rmqnamesrv:rmqnamesrv -e "NAMESRV_ADDR=rmqnamesrv:9876"  -e "JAVA_OPT_EXT=-server -Xms128m -Xmx128m -Xmn128m"  apache/rocketmq-broker:4.2.0

sudo docker run -dti --name broker \
    -p 10911:10911 -p 10909:10909 \
    --link namesrv:namesrv \
    -e "NAMESRV_ADDR=namesrv:9876" \
    -e "JAVA_OPT_EXT=-server -Xms128m -Xmx128m -Xmn128m" \
    apache/rocketmq-broker:4.2.0
