SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules
PROJECT=FastAPI_starer
OS = $(shell uname -s)

.DEFAULT_GOAL := help

# Print usage of main targets when user types "make" or "make help"

.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

run: ## Run speed test
	( \
		echo " Check if virtual environment exists or initiate"; \
		if [ -d /venv ]; \
		then \
		echo "virtual environment already exists"; \
		else \
		echo "start creation virtual environment" \
		python -m venv venv; \
		fi; \
		clear; \
		source venv/bin/activate; \
		clear; \
		echo "Install requirements"; \
		pip install -r requirements.txt; \
		clear; \
		echo "Running speed test"; \
		. test.sh; \

	)
.PHONY: run