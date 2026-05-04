FROM golang:1.20 AS builder
WORKDIR /app
COPY main.go .

RUN CGO_ENABLED=0 GOOS=linux go build -o server main.go

FROM alpine:latest
WORKDIR /root/

COPY --from=builder /app/server .
EXPOSE 8080
CMD ["./server"]
