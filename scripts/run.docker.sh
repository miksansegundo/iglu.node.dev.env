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

# A Docker container to provide a development
# environment for Node.js applications.
# This script is for development mode only
# because mounts directories from the host.

# These environment variables will be also needed in production
ENV_VARS="NODE_ENV=development"

docker network create -d bridge app-net

docker run -it --rm --name ${SERVICE_NAME} \
    -w /home/nodejs/app -e ${ENV_VARS} `# Pass environment variables` \
    -v /home/nodejs/app/node_modules `# Mount node_modules in host from the container` \
    -v $(pwd)/micro-services/service:/home/nodejs/app `# Allow edition of the container app from host` \
    --network=app-net -p ${npm_package_config_port}:${npm_package_config_port} `# Connect in net and open port to the host` \
    miguelsansegundo/iglu:latest