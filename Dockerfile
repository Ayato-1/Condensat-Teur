FROM gcc:16.2

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        make \
        libssl-dev \
        pkg-config \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN gcc --version \
    && make --version \
    && pkg-config --modversion openssl \
    && test -f /usr/include/openssl/evp.h

CMD ["/bin/bash"]
