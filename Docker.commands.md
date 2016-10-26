# Docker commands

The project uses a docker container for each micro-service.

### Using scripts to build and run the docker container
Must be run from the root of the project. 

#### Building the container image
Each time a new file is changed or added to the app a new building is needed
to create the container image for the deployment or to share it with other 
developers. Before run the command the version number must be updated in 
the file **scripts/build.docker.sh**. All the modules in package.json will 
be installed. All files of the package will be copied inside the container 
in the folder **/home/nodejs/app**. The new image is tagged with the **latest** 
and pushed to [https://hub.docker.com/r/miguelsansegundo/iglu](Docker hub repo). 
```
sh scripts/build.docker.sh
```

#### Running the container
The development environment will be started trough the container running 
on it the **npm start** command. All the code is editable from the host 
because is mounted to be read from the container. The node_modules folder 
is also mounted from the container to enable the edition from the host. 
In development mode more npm modules could be installed from the host.
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