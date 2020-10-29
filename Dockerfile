FROM alpine:latest

RUN apk update && \
    apk add curl python3-dev openssh-client build-base libffi-dev openssl-dev git && \
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3 get-pip.py && \
    python3 -m pip install ansible

