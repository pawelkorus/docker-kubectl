IMAGE_TAG ?= latest
BASE_IMAGE_VERSION ?= 1.35.1

.PHONY: build help

help:
	@echo "Available targets:"
	@echo "  build     Build the Docker image"
	@echo "  help      Show this help message"

build:
	docker build --build-arg BASE_IMAGE_VERSION=$(BASE_IMAGE_VERSION) -t pkorus/kubectl:$(BASE_IMAGE_VERSION)-$(IMAGE_TAG) .

.DEFAULT_GOAL := help
