.PHONY: dev-up
dev-up:
	docker compose up

.PHONY: dev-up-build
dev-up-build:
	docker compose up --build

.PHONY: dev-down
dev-down:
	docker compose down	
