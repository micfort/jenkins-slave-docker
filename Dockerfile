# Use an official Python runtime as a parent image
FROM alpine

RUN    delgroup ping \
    && addgroup -g 999 docker \
    && apk --no-cache add docker \
    && adduser jenkins \
    && adduser jenkins docker