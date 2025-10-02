# **🧪 Lab 07: Saving the state of a container

## 1. Create the container using the folowing command

```
docker run -d --name mon_app7 nginx
```
## 2. Export the container

Copy the following command
```
docker export mon_app7 -o backup.tar
```

## 3. Import it as an image

1.  Import the backup and create the image using the following command
```
docker import backup.tar mon-app7-backup-image:latest
```

2. List all images using the following command
```
docker images
```

## 4. Create the backup container 
Create a container using the backup image following command
```
docker run -d --name mon_app7_backup mon-app7-backup-image:latest nginx -g 'daemon off;'
```
## 5. Cleanup

1. Stop the container using the following command
Run the following command to remove the container
```
docker stop mon_app7
```

2. Remove the container using the following command
Run the following command to remove the container
```
docker rm mon_app7
```

3. Stop the container using the following command
Run the following command to remove the container
```
docker stop mon_app7_backup
```

4. Remove the container using the following command
Run the following command to remove the container
```
docker rm mon_app7_backup
```

5. Remove backup.tar file
Run the following command to remove the container
```
rm -f backup.tar
```