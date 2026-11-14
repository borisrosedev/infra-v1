.ONESHELL:
.SHELLFLAGS: -eu -o pipefail -c
SHELL := bash
INFO := \033[34;1m
ERROR := \033[31;1m
SUCCESS := \033[32;1m
NO := \033[m
ENV?=dev
.DEFAULT_GOAL := help

.PHONY: help
help: ## shows this help
	@grep -hE "^[a-zA-Z_-]+.*: ## .*$$" $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS=": ##"}{printf "$(INFO)%-20s$(SUCCESS)%s$(NO)\n", $$1, $$2}'
