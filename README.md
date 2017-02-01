
##start spark master, worker and ignite node

```
docker-compose up -d
```
**scale mode**
```
docker-compose scale spark-master=1 spark-slave=2 ignite-node=2
```
**stop all containers:**
```
docker kill $(docker ps -q)
```
**spark submit:**
```
docker run spark-config spark-submit \
  --class <main-class> \
  --master spark://spark-master:7077 \
  <application-jar> \
  [application-arguments]
```
**spark shell**, get ip from `docker exec -it spark-master ip addr show`
```
docker run spark-conf spark-shell \
  --master spark://<ip>:7077
```
