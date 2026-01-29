FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /

RUN apt-get update && \
    apt-get install -y --no-install-recommends ttyd bash && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN useradd -m -d /home/ihms ihms

USER ihms
WORKDIR /home/ihms

ENTRYPOINT ["/entrypoint.sh"]
