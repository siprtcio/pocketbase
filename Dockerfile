FROM golang:1.18.2-alpine
WORKDIR /usr/local/go/src/github.com/siprtcio/pocketbase
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build github.com/siprtcio/pocketbase/cmd/main.go -a -installsuffix cgo -o app .

EXPOSE 8080

CMD ["github.com/siprtcio/pocketbase/app"]
