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
# environment for Node.js applications

NAME="server.iglu"

ENV="NODE_ENV=development"

docker network create -d bridge app-net

docker run -it --rm --name ${NAME} \
    -w /home/nodejs/app -e ${ENV} \
    -v /home/nodejs/app/node_modules `# Mount node_modules in host from the container` \
    -v $(pwd)/app/server:/home/nodejs/app `# Allow edition of the container app from host` \
    --network=app-net -p 8888:8888 \
    iglu/node.dev.env
