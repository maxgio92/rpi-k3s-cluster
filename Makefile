SHELL := bash

.PHONY: all

.DEFAULT_GOAL := all

all: server agents

agents:
	@./scripts/deploy_agents.sh

server:
	@./scripts/deploy_server.sh
