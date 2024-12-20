FROM alpine:latest

ARG NAME="World"

CMD echo "Hello ${NAME}!"