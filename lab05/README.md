# **🧪 Lab 05: Afficher les conteneurs

## 1. Create a Docker container using the folowing command

```
docker run -d --name mon_app5 nginx:1.29.0
```

## 2. List all working containers
Copy the following command
```
docker ps
```

## 3. Stop the working container
Run the following command to stop the container
```
docker stop mon_app5
```

## 4. List all containers ( working and not working)

1. Run the folowing command

```
docker ps -a
```

2. Cleanup container
Run the following command to remove the container
```
docker rm mon_app5
```
