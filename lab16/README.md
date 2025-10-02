# **🧪 Lab 16: Backup and restore volumes

## 1. Create a container with volume
1. Create the container with the following command
```
docker run -d --name mon_app16 -e MYSQL_ROOT_PASSWORD=secret -e MYSQL_DATABASE=demo -v volumelab16:/var/lib/mysql mysql:8
```

2. List volumes
```
docker volume ls
```

3. Access the container
```
docker exec -it mon_app16 mysql -uroot -psecret
```

4. Add user
```
USE demo;
CREATE TABLE test (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(50), lastname VARCHAR(50));
INSERT INTO test (name, lastname) VALUES ('Karim', 'Arous');
```

5. List input
```
SELECT * FROM test;
```

6. Exist mysql and container
```
exit
```

## 2. Create a Backup of the container volume

1. Create a backup
```
docker exec mon_app16 mysqldump -uroot -psecret demo > backup.sql
```

## 3. Restore the data to a new container

1. Create a new container
```
docker run -d --name mon_app16_restore -e MYSQL_ROOT_PASSWORD=secret -e MYSQL_DATABASE=demo -v volumelab16_restore:/var/lib/mysql mysql:8
```

2. List volumes
```
docker volume ls
```

3. Restore the data
```
docker exec -i mon_app16_restore mysql -uroot -psecret demo < backup.sql
```

4. Verify the data
```
docker exec -i mon_app16_restore mysql -uroot -psecret demo -e "SELECT * FROM test;"
```

## 4. Cleanup

1. Stop the containers 
```
docker stop mon_app16 mon_app16_restore
```

2. Remove the containers
```
docker rm mon_app16 mon_app16_restore
```

3. Delete the volumes
```
docker volume rm volumelab16 volumelab16_restore
```
