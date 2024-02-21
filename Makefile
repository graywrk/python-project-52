install:
	poetry install

PORT ?= 8000
start:
	poetry run gunicorn -w 5 -b 0.0.0.0:${PORT} task_manager.wsgi:application

dev:
	docker-compose up --build

lint:
	poetry run flake8 task_manager

build:
	./build.sh