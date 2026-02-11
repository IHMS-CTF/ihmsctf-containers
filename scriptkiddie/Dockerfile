FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends ttyd bash nano vim && \
    apt-get install -y build-essential wget libpam0g-dev libselinux1-dev zlib1g-dev \
                       pkg-config libssl-dev git ca-certificates && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /opt
RUN wget https://www.sudo.ws/dist/sudo-1.9.16p2.tar.gz && \
    tar xzf sudo-1.9.16p2.tar.gz && \
    cd sudo-1.9.16p2 && \
    ./configure --disable-gcrypt --prefix=/usr && make && make install

WORKDIR /

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN useradd -m -s /bin/bash -d /home/ihms ihms

USER ihms
WORKDIR /home/ihms

ENTRYPOINT ["/entrypoint.sh"]