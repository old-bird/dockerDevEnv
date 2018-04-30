

**Networking in Compose**
参见： https://docs.docker.com/compose/networking/


网络说明：

1、 容器只有在同一网络才能互相访问，多个compose的services 要共用一个网络，可预先创建网络

示例：
docker network create vortex  
创建一个名为 vortex 的网络，默认是桥接模式

2、单个compose内部各service也可以做隔离， 可分别加入不同网络

示例：
serviceA:
    networks:
      - netA
      - netB
serviceB:
    networks:
      - netB
  
3、容器单向通讯可使用 links

示例：
serviceA：
    links:
        - redis
        - mysql

4、要访问compose外部创建的容器，可使用 external_links, 用法同links






