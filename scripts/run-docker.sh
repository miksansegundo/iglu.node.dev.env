
CONTAINER_NAME=node.environment
ENV_VARIABLES="NODE_ENV=development"

docker stop ${CONTAINER_NAME}
docker rm ${CONTAINER_NAME}

docker run -it --rm -p 8888:8888 --name ${CONTAINER_NAME} -v app:/ -e ${ENV_VARIABLES} miguelsansegundo/iglu.node.dev.env
