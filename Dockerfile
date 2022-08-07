ARG DOCKER_BASE=ubuntu:20.04
FROM $DOCKER_BASE

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    dumb-init \
&& rm -rf /var/lib/apt/lists/*

COPY apt-get-from-librarian /usr/local/bin/
COPY test-* /usr/local/bin/

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
