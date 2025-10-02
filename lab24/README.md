# **🧪 Lab 24: Deploy a docker-compose monitoring stack

## 1. Deploy a docker-compose stack
1. Create a folder named lab24 using the following command
```
mkdir lab23
```

2. Access the folder
```
cd lab23
```

3. Create a file named docker-compose.yml and copy the following code inside it
```
services:
  grafana:
    image: grafana/grafana
    container_name: grafana
    ports:
      - 3000:3000
    restart: unless-stopped
    volumes:
      - ./volumes/grafana/data:/var/lib/grafana

  prometheus:
    image: docker.io/prom/prometheus:latest
    container_name: prometheus
    ports:
      - 9090:9090
    command: "--config.file=/etc/prometheus/prometheus.yaml"
    volumes:
      - ./volumes/prometheus/conf/prometheus.yml:/etc/prometheus/prometheus.yaml:ro
      - ./volumes/prometheus/data:/prometheus
    restart: unless-stopped
```

4. Create a folder named volumes and access it
```
mkdir volumes && cd volumes
```

5. Create a folder named prometheus and access it
```
mkdir prometheus && cd prometheus
```

6. Create a folder named conf and access it
```
mkdir conf && cd conf
```

7. Create a file named prometheus.yml and copy the following code inside it
```
global:
  scrape_interval:     15s # By default, scrape targets every 15 seconds.

scrape_configs:
  - job_name: 'prometheus'
    scrape_interval: 5s
    static_configs:
      - targets: ['localhost:9090']
```

8. in the root of the folder lab23 run the following command
```
docker-compose up -d
```

9. Copy the following URL in chrome to access prometheus
```
localhost:9090
```

10. Copy the following URL in chrome to access grafana
```
localhost:3000
```

## 2. Cleanup

1. Remove all the stack
```
docker-compose down
```

2. Delete the unwanted folders
```
rm -rf volumes/grafana volumes/prometheus/data/
```
