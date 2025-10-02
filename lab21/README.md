# **🧪 Lab 21: Connect container to an existing network

## 1. Create container
1. Create the container with the following command
```
docker run -d --name mon_app21_db -e POSTGRES_PASSWORD=secret -e POSTGRES_DB=demo -v pgdata:/var/lib/postgresql/data postgres:16
```

## 2. Create container in specific network

1. Create the network
```
docker network create dev
```

2. Copy the following to create the api container in dev network
```
docker run -d --name mon_app21_api --network dev busybox sleep 3600
```

## 3. Attach network to the mon_app20_api container
```
docker network connect dev mon_app21_db
```

4. Test connexion
```
docker exec -it mon_app21_api ping mon_app21_db
```
