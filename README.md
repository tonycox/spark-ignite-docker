
##start spark master, worker and ignite node

```
docker-compose up
```
**scale mode:**
```
docker-compose scale spark-master=1 spark-slave=2 ignite-node=2
```
**stop all containers:**
```
docker kill $(docker ps -q)
```
**spark submit:**
```
docker exec -v <volume-folder> \
  spark-master spark-submit \
  --class <main-class> \
  --master spark://spark-master:7077 \
  <application-jar> \
  [application-arguments]
```

**spark shell:**
```
docker exec -it spark-master spark-shell \
  --master spark://spark-master:7077
```
get ip:
```
docker exec -it spark-master ip addr show
```

