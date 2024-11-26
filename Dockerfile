FROM ubuntu:focal

# Install dependencies
RUN /usr/bin/apt-get update && \
    /usr/bin/apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_14.x | /bin/bash - && \
    /usr/bin/apt-get update && \
    /usr/bin/apt-get upgrade -y && \
    /usr/bin/apt-get install -y nodejs  ffmpeg 

WORKDIR /home/app


ENTRYPOINT [ "bash" ]