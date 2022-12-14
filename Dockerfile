FROM golang:latest

WORKDIR /go/src/app
COPY . .

RUN go mod download && go mod verify

COPY . .
RUN go run main.go &