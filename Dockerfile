FROM alpine:latest

RUN apk --no-cache add \
		dnssec-root \
		opendkim

EXPOSE 50022
CMD ["sh", "-c", "mkdir /run/opendkim && chown opendkim:opendkim /run/opendkim && /usr/sbin/opendkim -x /etc/opendkim/opendkim.conf -f"]
