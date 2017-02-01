#!/bin/bash

# Start spark worker service
start-slave.sh spark://$MASTER_HOSTNAME:7077

# Run in daemon mode, don't exit
while true; do
  sleep 100;
done