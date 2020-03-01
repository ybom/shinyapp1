
up:
	@echo "Starting up containers for shiny server..."
	docker-compose pull
	docker-compose up -d --remove-orphans

down: stop

stop:
	@echo "Stopping containers for shiny server..."
	@docker-compose stop

prune:
	@echo "Removing containers for shiny server..."
	@docker-compose down -v

ps:
	@docker ps --filter name="shiny*"

logs:
	@echo "Displaying past containers logs"
	docker-compose logs

logsf:
	@echo "Follow containers logs output"
	docker-compose logs -f