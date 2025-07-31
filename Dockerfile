FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y \
  curl \
  jq \
  procps \
  gdb \
  strace \
  ltrace \
  lsof \
  net-tools \
  iputils-ping \
  dnsutils \
  && rm -rf /var/lib/apt/lists/*
CMD ["tail", "-f", "/dev/null"]
