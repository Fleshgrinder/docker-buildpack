FROM docker:stable-git

RUN apk add --no-cache make py-pip tar && pip install docker-compose && apk del --no-cache py-pip
