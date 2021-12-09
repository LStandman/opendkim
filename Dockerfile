FROM alpine:latest

RUN apk --no-cache add \
		dnssec-root \
		opendkim

RUN mkdir /run/opendkim && chown opendkim:opendkim /run/opendkim

EXPOSE 50022
CMD ["sh", "-c", "rm -rf /run/opendkim/*; /usr/sbin/opendkim -x /etc/opendkim/opendkim.conf -f"]
