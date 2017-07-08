FROM docker:17.06.0-ce-git

RUN apk add --no-cache make py-pip tar && pip install docker-compose && apk del --no-cache py-pip
