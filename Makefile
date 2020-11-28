SHELL := bash

.DEFAULT_GOAL := all

.PHONY: all
all: server agents

.PHONY: agents
agents:
	@./scripts/deploy_agents.sh

.PHONY: server
server:
	@./scripts/deploy_server.sh
