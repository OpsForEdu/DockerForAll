# **🧪 Lab 19: Create 2 containers in the same network

## 1. Create containers in the same networks
1. Create the container with the following command
```
docker network create backend
```

2. List volumes
```
docker network ls
```

## 2. Create containers in the same networks

1. Copy the following to create the postgres container
```
docker run -d --name mon_app19_db --network backend -e POSTGRES_PASSWORD=secret -e POSTGRES_DB=demo -v lab19volume:/var/lib/postgresql/data postgres:16
```

2. Copy the following to create the node container
```
docker run -it --name mon_app19_api --network backend node:20-alpine sh
```

3. Install postgresql client inside the node container
```
apk add --no-cache postgresql-client
```

4. Test connexion with postgres
```
PGPASSWORD=secret psql -h mon_app19_db -U postgres -d demo -c "SELECT 1;"
```

5. Copy the following to exit the container
```
exit
```