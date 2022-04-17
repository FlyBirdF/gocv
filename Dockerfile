# to build this docker image:
#   docker build .
FROM gocv/opencv:4.5.5

ENV GOPATH /go

COPY . /go/src/github.com/FlyBirdF/gocv/

WORKDIR /go/src/github.com/FlyBirdF/gocv
RUN go build -tags example -o /build/gocv_version -i ./cmd/version/

CMD ["/build/gocv_version"]
