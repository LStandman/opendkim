FROM debian:testing-slim

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    opendkim \
  && rm -rf /var/lib/apt/lists/*

EXPOSE 50022
CMD ["sh", "-c", "rm -rf /run/opendkim/*; /usr/sbin/opendkim -x /etc/opendkim/opendkim.conf -f"]
