FROM docker:stable-git

RUN apk add --update make py-pip tar && \
	pip install docker-compose && \
	rm -rf /var/lib/apt/lists/* /var/cache/apk/*
