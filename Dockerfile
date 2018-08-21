# Get the latest golang
FROM golang

# Install revel and the revel CLI.
RUN go get github.com/revel/revel
RUN go get github.com/revel/cmd/revel

# Copy my test application into the container
COPY ./application /go/src/application

# Use the revel CLI to start up our application.
ENTRYPOINT revel run application dev 80

EXPOSE 80