all: build run

build:
	docker compose build

run:
	docker compose up -d

stop:
	docker compose stop

clean:
	docker compose down -v

fclean: clean
	docker system prune -af
