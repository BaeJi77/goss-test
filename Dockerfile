FROM golang:1.20

RUN curl -fsSL https://goss.rocks/install | sh
RUN chmod +x /usr/local/bin/goss

WORKDIR /go/src/app

COPY . .

RUN go build -o golang-sleep

ENTRYPOINT ["./golang-sleep"]
