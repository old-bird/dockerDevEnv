#!/bin/bash

docker run -dti --name tidb-server \
        -p 4000:4000 -p 10080:10080 \
        pingcap/tidb
#
#docker pull pingcap/tidb
##45.58 MB
#mkdir -p /data/tidb/data
#docker run --name tidb-server -d -v /data/tidb/data:/tmp/tidb -p 4000:4000 -p 10080:10080 pingcap/tidb:latest
#设置数据文件，默认使用 goleveldb 存储。