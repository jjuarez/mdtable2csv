#!/usr/bin/env make

.DEFAULT_GOAL := help


.PHONY: help
help: ## Shows this pretty help screen
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make <target>\n\nTargets:\n"} /^[a-z0-9\/_-]+:.*?##/ { printf " %-15s %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

.PHONY: snapshot
snapshot: ## Generates a snapshot release
	@goreleaser release --clean --snapshot

.PHONY: release
release: ## Generates a new release
	@goreleaser release --clean --skip-publish

.PHONY: test
test: ## Test
	@go test ./...
