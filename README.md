[![Build Status](https://github.com/cliffano/studio-agents/actions/workflows/ci-workflow.yaml/badge.svg)](https://github.com/cliffano/studio-agents/actions/workflows/ci-workflow.yaml)

# Studio Agents

## RO0K

[Persona definition](personas/rook.md)

![RO0K avatar image](images/ro0k-avatar-small.png)

![RO0K introduction](images/ro0k-intro.png)

Setup on ChatGPT.com:

1. Navigate to `ChatGPT Setting -> Personalization -> Custom instructions`
2. Copy paste [RO0K's persona](personas/ro0k.md)

## Gus

[Persona definition](personas/gus.md)

![Gus avatar image](images/gus-avatar-small.png)

![Gus introduction](images/gus-intro.png)

Setup on Goose:

1. Add `@~/.config/goose/gus.md` to `~/.config/goose/.goosehints/`
2. Run `make setup-local-goose`

## Kyo

[Persona definition](personas/kyo.md)

![Kyo avatar image](images/kyo-avatar-small.png)

![Kyo introduction](images/kyo-intro.png)

Setup on Claude.ai:

1. Navigate to `Claude Setting -> General -> Instructions for Claude`
2. Copy paste [Kyo's persona](personas/kyo.md)

Setup on Claude Code:

1. Run `make setup-local-claude`
