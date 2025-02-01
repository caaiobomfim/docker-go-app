FROM golang:1.21-alpine AS builder

WORKDIR /app

COPY go.mod .
RUN go mod tidy

COPY main.go .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -o server .

RUN apk add --no-cache upx \
    && upx --best --lzma server

FROM scratch
WORKDIR /app
COPY --from=builder /app/server .
EXPOSE 8080
CMD ["./server"]