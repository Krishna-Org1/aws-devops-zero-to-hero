#!/bin/bash
set -e

# Stop the running container (if any)
containerId=$(docker ps | awk -F" " '{print $1}')

if [ -n "$containerId" ]; then
  # Stop and remove all containers
  docker rm -f $containerId
  echo "Containers stopped and removed."
else
  echo "No container is running."
fi
