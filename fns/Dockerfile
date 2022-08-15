FROM golang:latest as base

WORKDIR /opt/app/api

COPY go.mod .
COPY go.sum .
RUN go mod download

FROM base as dev

RUN curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s -- -b $(go env GOPATH)/bin
CMD ["air"]
