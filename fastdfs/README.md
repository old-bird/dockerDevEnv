##What is FastDFS?
FastDFS is an open source high performance distributed file system. It's major
functions include: file storing, file syncing and file accessing (file uploading
and file downloading), and it can resolve the high capacity and load balancing
problem. FastDFS should meet the requirement of the website whose service based
on files such as photo sharing site and vidio sharing site.

https://github.com/happyfish100/fastdfs

##Run as a tracker
```console
docker run -ti -d --name trakcer -v ~/tracker_data:/fastdfs/tracker/data --net=host season/fastdfs tracker
```
* port
>tracker default port is 22122

* base_path
>you should map the path: /fastdfs/tracker/data to keep the data

##Run as a storage
```console
docker run -ti --name storage -v ~/storage_data:/fastdfs/storage/data -v ~/store_path:/fastdfs/store_path --net=host -e TRACKER_SERVER:192.168.1.2:22122 season/fastdfs storage
```
* storage_data
>equal to "base_path" in store.conf

* store_path
>equal to "store_path0" in store.conf

* TRACKER_SERVER
>tracker address

##Run as shell
```console
docker run -ti --name fdfs_sh --net=host season/fastdfs sh
```
too get a shell, you can use FastDFS client tools.

* log
>I redirect FastDFS's log file to container's stdout, so, its easy to collect log.

##use your config file
FastDFS config files is in: /fdfs_conf