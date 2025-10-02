# **🧪 Lab 25: Implement always restart

## 1. Lauch the container with always restart
1. deploy the container
```
docker run --restart always --name lab25 -d nginx
```

2. Stop the container
```
docker stop lab25
```

2. Remove the container
```
docker rm lab25
```

## 2. Deploy docker-compose stack with always restart

1. Deploy the stack
```
version: "3.8"

services:
  nginx:
    image: nginx
    container_name: lab25
    restart: always
```

2. Destroy the stack
```
docker-compose down
```
