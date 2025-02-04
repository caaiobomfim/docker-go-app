# Docker Go App 🚀

This is a simple Go application running inside a Docker container. It exposes a basic HTTP server that returns a response when accessed.

## 📦 Features
- Minimal Go HTTP server.
- Multi-stage Docker build for smaller image size (~2MB).
- Uses `scratch` as the final image to minimize dependencies.
- Optimized Go binary with UPX compression.

### 🔧 Tech Stack
- Go (Golang).
- Docker.
- Scratch (Minimal Docker Image).

## 🚀 Getting Started

### 🐳 Docker Image

This application is available on **Docker Hub**:

[![Docker Pulls](https://img.shields.io/docker/pulls/caiobom/fullcycle?style=flat-square)](https://hub.docker.com/r/caiobom/fullcycle)

### 📥 Pull the Image
To pull the image from Docker Hub, run:

```sh
docker pull caiobom/fullcycle:latest
```

### 🔥 Running the Docker Container
Run the container and expose port 8080:

```sh
docker run -p 8080:8080 caiobom/fullcycle
```

### 🌍 Testing the Application
Once the container is running, access:

```sh
http://localhost:8080
```

Or use curl:

```sh
curl http://localhost:8080
```
