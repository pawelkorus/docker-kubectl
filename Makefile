IMAGE_NAME ?= pkorus/kubectl
IMAGE_TAG ?= latest

.PHONY: build help

help:
	@echo "Available targets:"
	@echo "  build     Build the Docker image"
	@echo "  help      Show this help message"

build:
	docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .

.DEFAULT_GOAL := help