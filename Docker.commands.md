# Docker commands

The project uses a docker container for each micro-service.

### Using scripts to build and run the docker container
Must be run from the root of the project. 

#### Building the container image
Each time the apps improves with new bugs fixed (patch) or new funtionality 
added (minor) a new version must be realeased increasing the semantic version 
with the command:
```
npm version patch # for bugs fixed
npm version minor # for new features added 
```
Then a new building is needed to create the container image to deployment 
or to share it with other developers using the command:
```
npm run build.docker # creates a new image tagged with latest version 

```
Using the Dockerfile all the modules in package.json will be installed. 
All files will be copied inside the container in the folder **/home/nodejs/app**. 
The new image has the name of the package and is tagged with version of the 
package and the **latest** tag. Then is pushed to 
[https://hub.docker.com/r/miguelsansegundo/iglu](Docker hub repo). 

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