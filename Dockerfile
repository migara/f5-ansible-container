FROM alpine:edge

MAINTAINER Migara Ekanayake
LABEL version="1.0"
LABEL description="Ansible on Alpine with bigsuds and f5-sdk"

RUN apk update
RUN apk add --update ansible python py-pip
RUN pip install bigsuds f5-sdk netaddr

EXPOSE 443

CMD echo "Container is starting..."