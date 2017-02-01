# maintainer Anton Solovev ""
#
#
FROM ubuntu:14.04

# Install
RUN apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y curl git unzip vim wget && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

# Set environment variables.
ENV HOME /root

# Install Java
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Download Spark package
ADD http://d3kbcqa49mib13.cloudfront.net/spark-1.6.3-bin-hadoop2.6.tgz /tmp/

# Unpack spark into /opt and set SPARK_HOME
RUN mkdir -p /opt/
RUN tar -xzf /tmp/spark-1.4.0-bin-hadoop2.6.tgz -C /opt/
ENV SPARK_HOME /opt/spark-1.4.0-bin-hadoop2.6

ENV PATH $PATH:${SPARK_HOME}/sbin/:${SPARK_HOME}/bin

# Spark ports
EXPOSE 7077 6066 8080 8081