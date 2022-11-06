FROM golang:1.18.2-alpine
WORKDIR /go/src/github.com/siprtcio/pocketbase
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build cmd/server.go -a -installsuffix cgo -o app .

EXPOSE 8080

CMD ["/app"]
