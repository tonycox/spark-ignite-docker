#!/bin/bash

# Start spark master and worker services
start-master.sh
start-slave.sh spark://`hostname`:7077

# Run in daemon mode, don't exit
while true; do
  sleep 100;
done