# **🧪 Lab 12: Create a container with an anonymous volume

## 1. Create a container with an anonymous volume

1. Create the container with the following command
```
docker run -d --name mon_app12 -e MYSQL_ROOT_PASSWORD=secretpassword -v /var/lib/mysql mysql:8
```

2. List existing volumes using the following command
```
docker volume ls
```

## 2. Cleanup

1. Stop the container using the following command
Run the following command to remove the container
```
docker stop mon_app12
```

2. Remove the container using the following command
Run the following command to remove the container
```
docker rm mon_app12
``` 

3. Delete the anonymos volume
Run the following command to remove the container
```
docker volume rm xxxxx
``` 

Note replace xxxx with the id of the anonymos volume