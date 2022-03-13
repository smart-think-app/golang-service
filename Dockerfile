FROM golang:1.16-alpine as builder
WORKDIR /app
COPY go.mod .
COPY go.sum .
#download dependencies
RUN go mod download
COPY . .
RUN go build -o /go/bin/main
#remove comment if want apply unit test
#RUN apk add build-base
#RUN go test -v
FROM alpine:3.5
# RUN apk add --update ca-certificates
# RUN apk add --no-cache tzdata && \
#   cp -f /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime && \
#   apk del tzdata
WORKDIR /app
COPY --from=builder /go/bin/main .
#expose port
EXPOSE 8080
ENTRYPOINT ["./main"]