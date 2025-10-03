# **🧪 Lab 17: Volume shared between containers

## 1. Create a container with volume
1. Create the container with the following command
```
docker run -d --name mon_app17 -e POSTGRES_PASSWORD=secret -e POSTGRES_DB=demo -v lab17volume:/var/lib/postgresql/data postgres:16
```

2. List volumes
```
docker volume ls
```

3. Access the container
```
docker exec -it mon_app17 psql -U postgres -d demo
```

4. Add user
```
CREATE TABLE users (id SERIAL PRIMARY KEY, name TEXT, lastname TEXT);
INSERT INTO users (name, lastname) VALUES ('Raihane', 'Modhaffer');
```

5. List input
```
SELECT * FROM users;
```

6. Exist postgres and container
```
exit
```

## 2. Create a container that use the same volume as the first container

1. Create a container 
```
docker run -d --name mon_app17_shared_volume --volumes-from mon_app17 -e POSTGRES_PASSWORD=secret postgres:16
```

2. Verify volume
```
docker exec -it mon_app17_shared_volume psql -U postgres -d demo -c "SELECT * FROM users;"
```

## 3. Cleanup

1. Stop the containers 
```
docker stop mon_app17 mon_app17_shared_volume
```

2. Remove the containers
```
docker rm mon_app17 mon_app17_shared_volume
```

3. Delete the volume
```
docker volume rm lab17volume
```
