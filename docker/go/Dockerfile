FROM golang:1.13.4

ENV TZ=America/Campo_Grande
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENV GOPATH /go

WORKDIR $GOPATH