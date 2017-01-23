.PHONY: image

IMAGE_NAME = "codeclimate/shredder"

image:
	docker build --tag $(IMAGE_NAME) .
