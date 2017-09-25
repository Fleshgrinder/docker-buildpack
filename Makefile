IMAGE := fleshgrinder/docker-buildpack

ifndef VERBOSE
.SILENT:
endif

all: image run

clean:
	docker system prune --force
.PHONY: clean

distclean: clean
	docker rmi $(IMAGE)
.PHONY: clean

image:
	docker build -t $(IMAGE) .
.PHONY: image

run:
	docker run -it --rm $(IMAGE)
.PHONY: run
