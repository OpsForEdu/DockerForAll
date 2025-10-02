# Lab 01: Create a Docker container

## 0. Create the project folder

0.1 Go to your home desktop and create a folder named **formation_docker**

0.2 Access this folder then click on the right button of your mouse and choose "Ouvrir dans le terminal"

0.3 Type the following code
```
code .
```

## 1. Create a Docker container

1. Run the folowing command

```
docker run --name mon_app1 nginx
```

2. In the terminal click on ctrl button + c button together
 
3. Run the following command
```
docker rm mon_app1
```

## 2. Create a Docker container that when exited will be deleted automaticly

1. Run the folowing command

```
docker run --rm --name mon_app1_autoremove nginx
```

2. In the terminal click on ctrl button + c button together
 