#!/bin/bash

# Create docker network for proxy
echo -e "Creating docker network for proxy..."
docker network create web-proxy
echo -e "...done."

# Call setup-firewall.sh
setup-firewall.sh
echo -e "...done."

echo -e "Starting frontend..."
docker-compose up -d
echo -e "...done."