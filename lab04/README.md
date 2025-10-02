# **🧪 Lab 04: Basic Docker Container Manipulation**

## 1. Create a Docker container

1. Run the folowing command

```
docker run -d --name mon_app4 -p 8080:5678  hashicorp/http-echo 
```

2. Open chrome
Copy the following URL in Chrome
```
http://localhost:8080/
```

3. Run the following command to stop the container
```
docker stop mon_app4
```

4. Run the following command to remove the container
```
docker rm mon_app4
```


## 2. Update Output of docker container

1. Run the folowing command

```
docker run -d --name mon_app4_modified -p 8080:5678  hashicorp/http-echo -text="Welcome to lab4"
```

2. Open chrome
Copy the following URL in Chrome
```
http://localhost:8080/
```

3. Run the following command to stop the container
```
docker stop mon_app4_modified
```

4. Run the following command to remove the container
```
docker rm mon_app4_modified
```
