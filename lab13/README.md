# **🧪 Lab 13: Create a container with an named volume

## 1. Create a container with an named volume

1. Create the container with the following command
```
docker run -d --name mon_app13 -e MYSQL_ROOT_PASSWORD=secretpassword -v volumelab13:/var/lib/mysql mysql:8
```

2. List existing volumes
Copy the following command
```
docker volume ls
```

## 2. Cleanup

1. Stop the container using the following command
Run the following command to remove the container
```
docker stop mon_app13
```

2. Remove the container using the following command
Run the following command to remove the container
```
docker rm mon_app13
``` 