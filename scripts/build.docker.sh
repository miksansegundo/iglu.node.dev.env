#!/usr/bin/env bash
#  .--------------------------.  #
#    __   _____  __    __  __    #
#   |__| |     ||  |  |  ||  |   #
#    __  | ||  ||  |  |  ||  |   #
#   |  | | ||  ||  |  |  ||  |   #
#   |  | | ''  ||  |_ |  ||  |   #
#   |  |  `-.  ||    ||  ''  |   #
#   '--' .--'  | `---' `-----'   #
#        '-----'                 #
#  .--------------------------.  #
#    WHERE COOL THINGS HAPPEN    #

# A Docker image to provide a development/production
# environment for Node.js applications

# Get the current path
SCRIPT_DIR=${BASH_SOURCE%/*}

# Access the micro-service directory
cd ${SCRIPT_DIR}/../micro-services/${npm_package_name}

# Building with tags and passing environment variables
docker build \
    --build-arg npm_package_config_port=${npm_package_config_port} \
    --build-arg NODE_ENV="development" \
    -t miguelsansegundo/iglu.${npm_package_name}:${npm_package_version} \
    -t miguelsansegundo/iglu.${npm_package_name}:latest .

# Push new container to Docker Hub repository
#docker push miguelsansegundo/iglu.${npm_package_name}:${npm_package_version}