# WoW TBC Offline - Comandos para gerenciar o servidor
# Use: make up   (liga o servidor)
#      make down (desliga o servidor)

COMPOSE_DIR = cmangos-tbc/bots

.PHONY: up down status logs console help create-account

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

console: ## Abre o console do servidor
	@echo "🔗 Conectando ao console (os logs aparecem - digite mesmo assim)..."
	@echo "    Comandos: account create nome senha"
	@echo "    Para sair: Ctrl+P, solta, Ctrl+Q"
	@echo ""
	docker attach $$(cd $(COMPOSE_DIR) && docker compose ps -q mangosd)

# Cria conta enviando comando direto pro console do servidor
create-account: ## Cria conta GM: make create-account U=nome S=senha
	@if [ -z "$(U)" ]; then \
		echo "❌ Uso: make create-account U=meunome S=minhasenha" ; \
		exit 1 ; \
	fi ; \
	PASS="$(or $(S),$(U))" ; \
	CID=$$(cd $(COMPOSE_DIR) && docker compose ps -q mangosd) ; \
	printf 'account create %s %s\naccount set addon %s 1\naccount set gmlevel %s 3 -1\n' "$(U)" "$$PASS" "$(U)" "$(U)" | docker exec -i $$$$CID /opt/mangos/bin/mangosd --pipe 2>/dev/null || \
	printf 'account create %s %s\naccount set addon %s 1\naccount set gmlevel %s 3 -1\n' "$(U)" "$$PASS" "$(U)" "$(U)" | docker attach $$CID 2>/dev/null; \
	echo "✅ Conta '$(U)' criada!" ; \
	echo "   Usuário: $(U)" ; \
	echo "   Senha: $$PASS"

restart: down up ## Reinicia o servidor
	@echo "🔄 Servidor reiniciado!"

help: ## Mostra esta ajuda
	@echo "🎮 Comandos disponíveis:"
	@echo ""
	@echo "  make up                  - Liga o servidor"
	@echo "  make down                - Desliga o servidor"
	@echo "  make status              - Mostra status dos serviços"
	@echo "  make logs                - Acompanhar logs do servidor"
	@echo "  make console             - Abrir console do servidor"
	@echo "  make create-account U=nome S=senha - Cria conta GM"
	@echo "  make restart             - Reinicia o servidor"
	@echo "  make help                - Mostra esta ajuda"
