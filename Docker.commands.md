# Docker commands

The project uses a docker container for each micro-service.

### Create a container
```
docker build -t miguelsansegundo/iglu.node.dev.env:latest -t iglu/node.dev.env:0.0.0 .
```

### Run a image
```
docker run --name server.iglu -p 8888:8888 -e "NODE_ENV=development" --rm iglu/node.dev.env
```

### Pass a command to a container
```
docker run --rm iglu/iglu.node.dev.env /bin/bash -c 'npm test'
```

### Access the container command line
```
docker exec -it iglu.node.dev.env /bin/bash
```

### List containers
```
docker ps -a
```

### Show images
```
docker images
```

### Remove containers
```
docker rm <id>
```

### Remove images
```
docker rmi -f <id|name>
```

### Print app output
```
docker logs <id|name>
```