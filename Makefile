.PHONY: setup node-setup husky-setup dev-up dev-up-build dev-down

# Default target that sets up the entire development environment
default: setup

# Comprehensive setup target
setup: node-setup husky-setup
	@echo "Environment setup complete."

# Node-specific setup tasks
node-setup:
	@echo "Running npm install... "
	npm install 

# Husky setup tasks
husky-setup:
	@echo "Initializing Husky..."
	npx husky-init
	@echo "Making Husky hooks executable..."
	chmod +x .husky/*
	@echo "Husky setup complete."

# Docker compose up without building
dev-up:
	docker compose up

# Docker compose up with building
dev-up-build:
	docker compose up --build

# Docker compose down
dev-down:
	docker compose down
