FROM golang:alpine
WORKDIR /app
EXPOSE 9090

ADD . /app/
RUN go build -o main .
RUN adduser -S -D -H -h /app appuser
USER appuser
CMD ["./main"]