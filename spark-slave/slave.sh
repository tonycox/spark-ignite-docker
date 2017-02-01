#!/bin/bash

# Start spark worker service
start-slave.sh $SPARK_MASTER_URL
exec tail -f $SPARK_HOME/logs/*
