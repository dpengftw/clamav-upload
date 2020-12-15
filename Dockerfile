FROM alpine:latest

LABEL maintainer="David Peng <dpeng1@gmail.com>"

RUN apk update && apk upgrade &&\
        apk add --no-cache \
        clamav \
        clamav-dev \
        curl \
        bash

ADD upload.sh /upload.sh
RUN chmod a+x /upload.sh

RUN /usr/bin/freshclam --quiet --on-update-execute=/upload.sh $dest_url $username $password > /etc/periodic/daily/clamavupload
