#!/bin/sh

# Run script for extra stuff to the generic MongoDB docker image entrypoint
exec /usr/local/bin/mongod-init.sh &

# Run DockerHub's "official image" entrypoint now
exec /usr/local/bin/docker-entrypoint.sh "$@"
