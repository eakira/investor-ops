new:
	docker network create investor-project
	docker compose up tls
	docker compose up setup
	docker compose up -d

start:
	docker compose up -d

stop:
	docker stop $$(docker ps -q)
