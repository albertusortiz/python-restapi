FROM alpine:3.10

RUN apk add python3 --no-cache python3-dev \
    && pip3 install --upgrade pip

WORKDIR /app

COPY . /app

