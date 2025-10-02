# **🧪 Lab 09: Create your own Dockerfile

## 1. Create a Dockerfile 

1. In the root project, create a folder named lab09

2. Inside the folder lab09, create a file named entrypoint.sh and copy the following code inside 

```
#!/bin/sh

COLOR="${COLOR:-blue}"

cat <<EOF > /usr/share/nginx/html/index.html
<html>
  <head><title>$COLOR Page</title></head>
  <body style="background-color: $COLOR; color: white; text-align: center; font-family: Arial, sans-serif;">
    <h1>This is the $COLOR page</h1>
  </body>
</html>
EOF

nginx -g "daemon off;"
```

3. Inside the folder lab09, create a file named Dockerfile and copy the following code inside 

```
FROM nginx:alpine

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
```

4. Open the terminal inside lab09 folder and Build the Docker image using the following command
```
docker build -t mon-app9-builded .
```

5. List all images using the following command
```
docker images
```

## 2. Create a Docker container using the builded image

1. Access the container
Copy the following command
```
docker run -d -p 8080:80 --name mon_app9 -e COLOR=green mon-app9-builded
```

2. Open chrome and copy the following
```
http://localhost:8080/
```

## 3. Cleanup

1. Stop the container using the following command
Run the following command to remove the container
```
docker stop mon_app9
```

2. Remove the container using the following command
Run the following command to remove the container
```
docker rm mon_app9
```

3. Delete image
```
docker rmi mon-app9-builded:latest
```