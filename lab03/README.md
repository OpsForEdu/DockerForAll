# Lab 02: Create a Docker container with specific port

## 1. Create a Docker container

1. Run the folowing command

```
docker run -d --name mon_app3 -p 8080:80 nginx 
```

2. Open a chrome tab and copy the following url:

```
localhost:8080 
```

## 2. Clean up envirenment

1. Run the following command to stop the container
```
docker stop mon_app3
```

2. Run the following command to remove the container
```
docker rm mon_app3
```
