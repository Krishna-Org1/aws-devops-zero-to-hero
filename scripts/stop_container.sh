#!/bin/bash
set -e
echo "Executing stop container"
# Stop the running container (if any)
containerId=$(docker ps | aws -F" " '{print $1}')

if [ -n "$containerId" ]; then
  # Stop and remove all containers
  docker rm -f "$containerId"
  echo "Container $containerId stopped and removed."
else
  echo "No container is running."
fi
