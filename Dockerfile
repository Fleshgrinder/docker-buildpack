FROM docker:stable-git

RUN apk add --update make py-pip tar && \
	pip install docker-compose && \
	apk del py-pip && \
	rm -rf /var/lib/apt/lists/* /var/cache/apk/*
