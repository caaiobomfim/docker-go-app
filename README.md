# Go Docker App 🚀

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

### 💻 Running Locally
To run the application without Docker, execute:

```sh
go run main.go
```

### 🐳 Building the Docker Image
To build the optimized Docker image, run:

```sh
docker build -t go-docker-app .
```

### 🔥 Running the Docker Container
Run the container and expose port 8080:

```sh
docker run -p 8080:8080 go-docker-app
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