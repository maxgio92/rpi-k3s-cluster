SHELL := bash

.DEFAULT_GOAL := all

.PHONY: all
all: server agents

.PHONY: agents
agents:
	@./bin/deploy_agents.sh

.PHONY: server
server:
	@./bin/deploy_server.sh
