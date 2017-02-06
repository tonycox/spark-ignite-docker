
##start spark master, worker and ignite node

```
docker-compose up
```
**scale mode:**
```
docker-compose scale spark-master=1 spark-slave=2
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
  --master spark://spark-master:7077 \
  --packages org.apache.ignite:ignite-spark_2.10:1.8.0,org.apache.ignite:ignite-spring:1.8.0
```
###Manual start spark
**build**
```
docker build -t spark-config . &&
docker build -t spark-master ./spark-master &&
docker build -t spark-slave ./spark-slave
```
**start master**
```
docker run -it --name <container-name> spark-master
```
**start slave**
```
docker run -it -e SPARK_MASTER_URL=spark://<master-ip>:7077 \
  --name <container-name> spark-slave
```
get ip:
```
docker exec -it spark-master hostname -i
```

