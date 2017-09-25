FROM docker:stable-git

RUN apk add --update bash make py-pip tar && \
pip install docker-compose && \
rm -rf /var/lib/apt/lists/* /var/cache/apk/* && \
sed -i 's/\/ash/\/bash/g' /etc/passwd
