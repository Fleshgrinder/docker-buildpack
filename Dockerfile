FROM docker:17.06.0-ce-git

RUN apk add --no-cache make py-pip && pip install docker-compose
