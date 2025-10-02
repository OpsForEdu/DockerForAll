# **🧪 Lab 10: Create your own Dockerfile multi-stage

## 1. Create a Dockerfile 

1. In the root project, create a folder named lab10

2. Inside the folde lab10 open a git terminal and copy the following command
```
git clone https://github.com/issaafalkattan/React-Landing-Page-Template.git
```

3. Access the folder React-Landing-Page-Template
```
cd React-Landing-Page-Template
```

4. Inside the folder React-Landing-Page-Template, create a file named Dockerfile and copy the following code inside 

```
# Build stage
FROM node:18-alpine AS build
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile
COPY . .
RUN yarn build

# Serve stage
FROM nginx:stable-alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
```

4. In the terminal inside lab10 folder, Build the Docker image using the following command
```
docker build -t mon-app10-multi-stage-builded:latest .
```

5. List all images using the following command
```
docker images
```

## 2. Create a Docker container using the builded image

1. Access the container
Copy the following command
```
docker run -d -p 8080:80 --name mon_app10 mon-app10-multi-stage-builded:latest
```

2. Open chrome and copy the following
```
http://localhost:8080/
```

## 3. Cleanup

1. Stop the container using the following command
Run the following command to remove the container
```
docker stop mon_app10
```

2. Remove the container using the following command
Run the following command to remove the container
```
docker rm mon_app10
```