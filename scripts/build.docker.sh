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

VERSION=0.0.0

cd micro-services/service/

docker build -t miguelsansegundo/iglu:${VERSION} \
    -t miguelsansegundo/iglu:latest .

docker push miguelsansegundo/iglu:${VERSION}