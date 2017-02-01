FROM spark-config

COPY slave.sh /usr/bin/.
RUN chmod a+x /usr/bin/slave.sh

ENV SPARK_MASTER_URL "spark://spark-master:7077"

EXPOSE 8081

CMD ["/usr/bin/slave.sh"]