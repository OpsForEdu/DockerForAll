# **🧪 Lab 08: Use container as a template

## 1. Create the container 

1. Run the folowing command

```
docker run -d --name mon_app8 -p 8080:80 nginx
```

2. Open chrome and copy the following
```
http://localhost:8080/
```

## 2. Update the default output

1. Access the container
Copy the following command
```
docker exec -it mon_app8 bash
```

2. Update default output
Copy the following command
```
echo "<h1>Welcome to lab 8</h1>" > /usr/share/nginx/html/index.html
```

3. Exit the container
Copy the following command
```
exit
```

4. Open chrome and copy the following
```
http://localhost:8080/
```

## 3. Save the modified container in a new Docker image

1. Save the modified container in a Docker image
```
docker commit mon_app8 mon-app8-modified:1.0.0
```

2. List all images using the following command
```
docker images
```

## 4. Create the updated container 
1. Create a container using the backup image following command
```
docker run -d --name mon_app8_modified -p 8081:80 mon-app8-modified:1.0.0 nginx -g 'daemon off;'
```

2. Open chrome and copy the following
```
http://localhost:8081/
```
## 5. Cleanup

1. Stop the container using the following command
Run the following command to remove the container
```
docker stop mon_app8
```

2. Remove the container using the following command
Run the following command to remove the container
```
docker rm mon_app8
```

3. Stop the container using the following command
Run the following command to remove the container
```
docker stop mon_app8_modified
```

4. Remove the container using the following command
Run the following command to remove the container
```
docker rm mon_app8_modified
```