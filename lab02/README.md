# Lab 02: Create a Docker container that works in the background

## 1. Create a Docker container

1. Run the folowing command
```
docker run -d --name mon_app2 nginx:1.29.0
```

2. Verify if the container still working
```
docker ps
```

## 2. Clean up envirenment

Run the following command
```
docker stop mon_app2
docker rm mon_app2
```