IMAGE_NAME=docker-spacy
DOCKER_DIR=docker
SRC_DIR=src
PWD=$(shell pwd)

.PHONY: image
image:
	docker build -t $(IMAGE_NAME) $(DOCKER_DIR)/.

.PHONE: notebook
notebook:
	docker run -it --rm -v $(PWD)/src:/src -p 8888:8888 docker-spacy
