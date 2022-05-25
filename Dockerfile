FROM golang:latest

WORKDIR /app

COPY . .

COPY *.go ./

EXPOSE 8080

ENTRYPOINT go run main duet.go home.go main.go scale.go