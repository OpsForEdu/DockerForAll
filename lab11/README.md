# **🧪 Lab 11: Push the image to Dockerhub

## 1. Create a Dockerhub account

1. Go to this link
```
https://hub.docker.com/
```

2. Click sign up and create an account 

## 2. Login to Dockerhub in your CLI using the following command

```
docker login
```
## 3. Tag the existing image

1. Tag the image that has builded in lab 10 
Copy the following and update raihane with your dockerhub username
```
docker tag mon-app10-multi-stage-builded:latest raihane/mon-app10-builded:1.0.0
```

Note: Update raihane with your docker username

2. Verify the existing images
```
docker images
```

## 3. Push the image

1. Copy the following command and update raihane with your dockerhub username
```
docker push raihane/mon-app10-builded:1.0.0
```

Note: Update raihane with your docker username

2. Go to Dockerhub and verify the image

## 4. Cleanup

1. Remove tagged Docker image and update raihane with your dockerhub username
Copy the following command
```
docker rmi raihane/mon-app10-builded:1.0.0
```

Note: Update raihane with your docker username

2. Remove builded Docker image
Copy the following command
```
docker rmi mon-app10-multi-stage-builded:latest
```