# **🧪 Lab 26: Implement cpu, memory requests and limits

## 1. Lauch the container with cpu and memeory limits
1. deploy the container
```
docker run -m 256m --cpus="0.25" -d --name mon_app26 -e POSTGRES_PASSWORD=secret -e POSTGRES_DB=demo -v lab26volume:/var/lib/postgresql/data postgres:16
```

2. Stop the container
```
docker stop mon_app26
```

2. Remove the container
```
docker rm mon_app26
```

3. Remove the volume 
```
docker volume rm lab26volume
```

## 2. Deploy docker-compose stack with cpu and memory limits

1. Deploy the stack
```
version: "3.8"

services:
  postgres:
    image: postgres:16
    container_name: mon_app26
    restart: always
    ports:
      - "5432:5432"
    mem_limit: 256m   
    cpus: 0.25
    environment:
    - POSTGRES_PASSWORD=secret
    volumes:
    - ./volume/pgdata:/var/lib/postgresql/data

```

2. Destroy the stack
```
docker-compose down
```
