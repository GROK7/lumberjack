FROM golang:alpine
MAINTAINER Victor Matekole <victor@GROK7.com>
RUN apk add --update bash && rm -rf /var/cache/apk/*
COPY . /go/src/lumberjack
WORKDIR /go/src/lumberjack
RUN go get -d -v
RUN go install -v
CMD ["/usr/local/go/bin/go build -v"]