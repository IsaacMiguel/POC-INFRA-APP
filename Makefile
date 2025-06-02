.PHONY: build run stop clean test

build:
	docker-compose build

run:
	docker-compose up

dev:
	docker-compose up --build

stop:
	docker-compose down

clean:
	docker-compose down -v
	docker system prune -f

test:
	docker-compose run app npm test

install:
	npm install

.DEFAULT_GOAL := dev
