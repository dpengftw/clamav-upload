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

CMD /usr/bin/freshclam --on-update-execute="/upload.sh $dest_url $username $password"
