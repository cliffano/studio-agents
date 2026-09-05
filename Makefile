ci: lint

define deps_extra
	@if command -v apt-get > /dev/null 2>&1; then \
		if [ "$$(id -u)" = "0" ]; then \
			$(MAKE) deps-extra-apt; \
		else \
			sudo $(MAKE) deps-extra-apt; \
		fi; \
	fi
endef

deps:
	$(call deps_extra)

deps-extra-apt:
	apt-get install -y markdownlint

lint:
	mdl -r ~MD002,~MD013,~MD029,~MD033 $(shell find . -path ./stage -prune -o -name "*.md" -print)

setup-local: setup-local-claude setup-local-goose

setup-local-goose:
	mkdir -p ~/.config/goose/
	cp personas/gus.md ~/.config/goose/

setup-local-claude:
	mkdir -p ~/.claude/rules/
	cp personas/kyo.md ~/.claude/rules/

.PHONY: ci deps deps-extra-apt lint setup-local setup-local-claude setup-local-goose