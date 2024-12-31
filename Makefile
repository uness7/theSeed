all: build run

build:
	docker compose build

run:
	docker compose up -d

stop:
	docker compose stop

clean:
	docker compose down -v

migrate:
	docker compose exec backend python3 manage.py makemigrations
	docker compose exec backend python3 manage.py migrate 

startapp:
	if [ -z "$(filter-out $@,$(MAKECMDGOALS))" ]; then \
		echo "Usage: make startapp <app_name>"; \
		exit 1; \
	fi
	docker compose exec backend python3 manage.py startapp $(filter-out $@,$(MAKECMDGOALS))

%:
	@:

createsuperuser:
	docker compose exec backend python3 manage.py createsuperuser

re: stop run

fclean: clean
	docker system prune -af
