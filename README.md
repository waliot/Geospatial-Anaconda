# Geospatial Anaconda 🌎 🐍

## Official image on Docker Hub:

```bash
$ docker pull waliot/geospatial-anaconda:latest
$ docker run -d \
    --name geospatial-anaconda \
    --restart=unless-stopped \
    -v `pwd`/jupiter-notebooks:/opt/notebooks \
    -p 8888:8888 \
    waliot/geospatial-anaconda:latest
$ docker container logs geospatial-anaconda
```

---

## Build & Run

Build & Run with `docker container`:

```bash
$ docker build -t geospatial-anaconda .
$ docker run -d \
    --name geospatial-anaconda \
    --restart=unless-stopped \
    -v `pwd`/jupiter-notebooks:/opt/notebooks \
    -p 8888:8888 \
    geospatial-anaconda:latest
```

Build & Run with `docker-compose`:

```bash
$ docker-compose build
$ docker-compose up -d
```
