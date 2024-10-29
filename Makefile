#!/usr/bin/env make

.DEFAULT_GOAL := snapshot

.PHONY: release
release:
	goreleaser release --skip-publish

.PHONY: snapshot
snapshot:
	goreleaser release --snapshot
