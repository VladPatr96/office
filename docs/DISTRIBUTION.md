# Distribution

Office uses `skills/` as the single source of truth. Generated layouts are compatibility layers.

## Targets

| Target | Layout | Notes |
|---|---|---|
| Claude Code | `.claude/skills/<skill>/SKILL.md` | Plugin install remains preferred |
| Codex | `.codex/skills/<skill>/SKILL.md` | User-skill compatible layout |
| Antigravity CLI (agy) | uses the Claude plugin layout as-is | install: `agy plugin install office@office` (marketplace form) or `agy plugin import claude`; verify: `agy plugin validate ./.claude-plugin` |
| OpenCode | `.opencode/skills/<skill>/SKILL.md` | Generic skill directory layout |
| Generic agents | `AGENTS.md` | Repository-level operating rules |

Antigravity CLI commands snapped from agy 0.x help, 2026-07-07; re-verify with `agy help plugin`.

## Regenerate

Run one of:

```powershell
./scripts/sync-layouts.ps1
```

```bash
./scripts/sync-layouts.sh
```

The generator must not edit canonical `skills/`; it only overwrites derived layouts.

## Install

`install.ps1` and `install.sh` copy canonical skills to user-level skill directories. They do not install global tools or paid services.
