FROM python:3-alpine

RUN apk add --no-cache --virtual .build-deps libffi-dev build-base openssl-dev rust cargo && \
    pip install --no-cache-dir ansible && \
    apk del .build-deps && rm -rf /root/.cargo/registry && \
    apk add --no-cache curl openssh-client git lftp
