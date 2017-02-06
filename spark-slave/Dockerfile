FROM tonycox/spark-ignite

COPY slave.sh /usr/bin/.
RUN chmod a+x /usr/bin/slave.sh

ENV SPARK_MASTER_URL "spark://spark-master:7077"

# Spark worker port
EXPOSE 8081

# Ignite ports
EXPOSE 11211 47100 47500 49112

CMD ["/usr/bin/slave.sh"]