FROM golang:1.12-stretch

RUN apt-get update \
 && apt-get --no-install-recommends install -y ca-certificates \
 && apt-get upgrade -y \
 && apt-get --no-install-recommends install -y git \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


RUN curl -kLo /usr/local/bin/dep \
             https://github.com/golang/dep/releases/download/v0.5.4/dep-linux-amd64 \
     && chmod +x /usr/local/bin/dep

COPY ../. .

RUN ls -la

