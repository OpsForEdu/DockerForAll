# **🧪 Lab 27: Scan images using Trivy

1. Scan postgres:13 with the following command
```
docker run --rm aquasec/trivy:latest image postgres:13
```

2. Scan mysql:5 with the following command
```
docker run --rm aquasec/trivy:latest image mysql:5
```

3. Scan node:14 with the following command
```
docker run --rm aquasec/trivy:latest image node:14
```