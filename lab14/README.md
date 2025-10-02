# **🧪 Lab 14: Create a container with an existing volume

## 1. Create a volume

1. Create a volume named volumelab14 the following command
```
docker volume create volumelab14
```

2. List existing volumes using the following command
```
docker volume ls
```

## 2. Create a container with an existing volume using the following command
```
docker run -d  --name mon_app14 -e POSTGRES_PASSWORD=secretpassword -v volumelab14:/var/lib/postgresql/data postgres:16
```

## 3. Cleanup

1. Stop the container using the following command
```
docker stop mon_app14
```

1. Remove the container using the following command
```
docker rm mon_app14
```