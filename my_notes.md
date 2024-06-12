# Docker build image
```docker build -t front_image .```
- Tag for the image name
```
-t 
```
- The directory where we are look for Dockerfile
```
.
``` 

- Name of the Dockerfile (Default is PATH/Dockerfile) 
``` 
-f
docker build -f Dockerfile2
``` 

https://docs.docker.com/reference/cli/docker/image/build/


# Docker run
```docker run -d --name frontapp_container -p 8080:8080 frontapp_image```

[Documentation](hhttps://docs.docker.com/reference/cli/docker/container/run/)

- detached mode:
- It runs the container in the background, so it doesn’t block your terminal.
```
-d
```
Ports between the host and the container.
8080:8080 
host machine:port inside the container
```
-p
```
If Dockerfile has
```
EXPOSE 8080
```
You can use "-P"
So container listens on port 8080 at runtime.

# Docker compose
```docker-compose up -d```

## Docker-compose logs
```docker-compose logs -f frontapp```
- Follow log output 
```
-f 
```


# Docker image inspect for Labels check
https://docs.docker.com/reference/cli/docker/image/inspect/
```
docker image inspect frontapp_image -f '{{json .Config.Labels}}'
docker image inspect backapp_image -f '{{json .Config.Labels}}'
```