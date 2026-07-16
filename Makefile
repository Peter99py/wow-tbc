# WoW TBC Offline - Comandos para gerenciar o servidor
# Use: make up   (liga o servidor)
#      make down (desliga o servidor)

COMPOSE_DIR = cmangos-tbc/bots

.PHONY: up down status logs console help

up:  ## Sobe o servidor (mangosd + realmd + database)
	@echo "🚀 Iniciando servidor WoW TBC..."
	cd $(COMPOSE_DIR) && docker compose up -d mangosd realmd
	@echo ""
	@echo "⏳ Aguardando servidor ficar pronto..."
	@echo "    Execute 'make logs' para acompanhar o progresso"
	@echo "    Execute 'make status' para verificar se já está online"

down: ## Desliga o servidor (para tudo)
	@echo "🛑 Desligando servidor WoW TBC..."
	cd $(COMPOSE_DIR) && docker compose down
	@echo "✅ Servidor desligado!"

status: ## Mostra status dos containers
	@echo "📊 Status do Servidor:"
	@cd $(COMPOSE_DIR) && docker compose ps --format "table {{.Name}}\t{{.Status}}\t{{.Ports}}"

logs: ## Mostra os logs do servidor em tempo real
	@cd $(COMPOSE_DIR) && docker compose logs -f mangosd

console: ## Abre o console do servidor (digite os comandos mesmo vendo logs)
	@echo "🔗 Conectando ao console do servidor..."
	@echo "    Digite os comandos normalmente (os logs não atrapalham)"
	@echo "    Ex: account create nome senha"
	@echo "    Para sair: Ctrl+P, solta, Ctrl+Q"
	@echo ""
	docker attach $$(cd $(COMPOSE_DIR) && docker compose ps -q mangosd)

restart: down up ## Reinicia o servidor
	@echo "🔄 Servidor reiniciado!"

help: ## Mostra esta ajuda
	@echo "🎮 Comandos disponíveis:"
	@echo ""
	@echo "  make up        - Liga o servidor"
	@echo "  make down      - Desliga o servidor"
	@echo "  make status    - Mostra status dos serviços"
	@echo "  make logs      - Acompanhar logs do servidor"
	@echo "  make console   - Abrir console para criar contas"
	@echo "  make restart   - Reinicia o servidor"
	@echo "  make help      - Mostra esta ajuda"
	@echo ""
	@echo "📋 Contas disponíveis: ADMINISTRATOR / administrator"
