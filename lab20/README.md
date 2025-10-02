# **🧪 Lab 20: Inspect network

1. Inspect network with the following command
```
docker network inspect backend
```

## 2. CLeanup

1. Stop the containers
```
docker stop mon_app17_db mon_app17_api
```

2. Remove the containers
```
docker rm mon_app17_db mon_app17_api
```

3. Delete the volume
```
docker volume rm lab17volume
```

4. Delete the network
```
docker network rm backend
```