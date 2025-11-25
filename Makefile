build:
	@docker build . -t 'for-vk'

start: build
	@docker run --rm --name 'for-vk' 'for-vk'