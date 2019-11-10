FROM docker:19.03.4-dind

RUN apk add --no-cache \
        python \
        py-pip \
        python-dev \
        libffi-dev \
        openssl-dev \
        gcc \
        libc-dev \
        make && \
    pip --no-cache-dir install docker-compose && \
    apk del --no-cache \
        py-pip \
        python-dev \
        libffi-dev \
        gcc \
        libc-dev \
        make
