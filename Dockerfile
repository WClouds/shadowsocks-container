FROM alpine:3.3
MAINTAINER cola chen <colachg@gmail.com>

RUN apk add --update \
    py-pip \
  &&pip install --upgrade pip \
  &&pip install shadowsocks \
  &&rm -rf /var/cache/apk/*

WORKDIR /app

#expose the port which is written in your shadowsocks config.
EXPOSE 6718

CMD ["ssserver", "-c", "shadowsocks.conf","-qq"]
