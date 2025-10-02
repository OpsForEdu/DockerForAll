# **🧪 Lab 22: Disconnect container from an existing network

## 1. Disconnect the container from the network
1. Disconnect the container
```
docker network disconnect dev mon_app21_db
```

4. Test connexion
```
docker exec -it mon_app21_api ping mon_app21_db
```

## 2. Cleanup

1. Stop containers
```
docker stop mon_app21_db mon_app21_api
```

2. Remove containers
```
docker rm mon_app21_db mon_app21_api
```

3. Remove volume
```
docker volume rm pgdata
```

4. Remove network
```
docker network rm dev
```
