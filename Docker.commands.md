# Docker commands

The project uses a docker container for each micro-service.

### Using scripts to build and run the docker container
Must be run from the root of the project. 

#### Build container
To deploy or share the latest version of the container. 
```
sh scripts/build.docker.sh
```

#### Run container
To run the develop environment trough the container. 
All the code is editable from the host because is read/run from the container.
The node_modules folder is empty because is a reference mounted from 
the container to enable the edition from the host.
The installation of new modules must be done inside the container.
```
sh scripts/run.docker.sh
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