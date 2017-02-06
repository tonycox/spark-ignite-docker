#!/bin/bash

# Start spark worker service
start-slave.sh $SPARK_MASTER_URL
ignite.sh &
exec tail -f $SPARK_HOME/logs/*
