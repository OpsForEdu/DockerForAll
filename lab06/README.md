# **🧪 Lab 06: Inspect Docker container

## 1. Inspect the container

1. Run the folowing command

```
docker run -d --name mon_app6 nginx
```
2. Inspect the container

Copy the following command
```
docker inspect mon_app6
```

## 2. Cleanup

1. Stop the container using the following command
Run the following command to remove the container
```
docker stop mon_app6
```

2. Remove the container using the following command
Run the following command to remove the container
```
docker rm mon_app6
```
