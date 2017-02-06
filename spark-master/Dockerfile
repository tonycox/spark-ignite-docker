FROM tonycox/spark-ignite

COPY master.sh /usr/bin/.
RUN chmod a+x /usr/bin/master.sh

EXPOSE 7077 6066 8080

CMD ["/usr/bin/master.sh"]
