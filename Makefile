setup-local: setup-local-claude setup-local-goose

setup-local-goose:
	mkdir -p ~/.config/goose/
	cp personas/gus.md ~/.config/goose/

setup-local-claude:
	mkdir -p ~/.claude/rules/
	cp personas/kyo.md ~/.claude/rules/

.PHONY: setup-local setup-local-claude setup-local-goose