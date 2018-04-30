#!/bin/bash

sudo docker run -dti --name tracker \
        --net=host \
        --restart always \
        -v ./conf:/fdfs_conf \
        --privileged=true \
        season/fastdfs tracker

sudo docker run -dti --name storage \
        --net=host \
        --restart always \
        -v ./conf:/fdfs_conf \
        --privileged=true \
        -e TRACKER_SERVER:10.0.0.12:22122 \
        season/fastdfs storage

#
#user nobody;
#worker_processes 1;
#events {
#    worker_connections 1024;
#}
#
#http {
#    include mime.types;
#    default_type application/octet-stream;
#    sendfile on;
#    keepalive_timeout 65;
#
#    server {
#        listen 8888;
#        server_name localhost;
#        location ~/group([0-9])/M00 {
#            ngx_fastdfs_module;
#        }
#
#        error_page 500 502 503 504 /50x.html;
#        location = /50x.html {
#            root html;
#        }
#    }
#}
#
#
#
#/usr/sbin/nginx/configure --prefix=/etc/nginx --conf-path=/etc/nginx/nginx.conf \
#  --error-log-path=/var/log/nginx/error.log --http-client-body-temp-path=/var/lib/nginx/body \
#  --http-fastcgi-temp-path=/var/lib/nginx/fastcgi --http-log-path=/var/log/nginx/access.log \
#  --http-proxy-temp-path=/var/lib/nginx/proxy --http-scgi-temp-path=/var/lib/nginx/scgi \
#  --http-uwsgi-temp-path=/var/lib/nginx/uwsgi --lock-path=/var/lock/nginx.lock \
#  --pid-path=/var/run/nginx.pid --with-pcre-jit --with-debug --with-http_addition_module \
#  --with-http_dav_module --with-http_geoip_module --with-http_gzip_static_module \
#  --with-http_image_filter_module --with-http_realip_module --with-http_stub_status_module \
#  --with-http_ssl_module --with-http_sub_module --with-http_xslt_module --with-ipv6 \
#  --with-sha1=/usr/include/openssl --with-md5=/usr/include/openssl --with-mail --with-mail_ssl_module \
#  --add-module=/home/lamby/temp/cdt.20170713090605.MNoIIuBKCe.ags.nginx/nginx-1.2.1/debian/modules/nginx-auth-pam \
#  --add-module=/home/lamby/temp/cdt.20170713090605.MNoIIuBKCe.ags.nginx/nginx-1.2.1/debian/modules/nginx-echo \
#  --add-module=/home/lamby/temp/cdt.20170713090605.MNoIIuBKCe.ags.nginx/nginx-1.2.1/debian/modules/nginx-upstream-fair \
#  --add-module=/home/lamby/temp/cdt.20170713090605.MNoIIuBKCe.ags.nginx/nginx-1.2.1/debian/modules/nginx-dav-ext-module \
#  --add-module=/home/fastdfs-nginx-module/src/
#
