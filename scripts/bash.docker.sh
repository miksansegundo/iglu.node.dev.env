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

# Access the bash command line of the Docker container
# environment for Node.js applications

docker exec -it ${npm_package_name}.iglu /bin/bash
