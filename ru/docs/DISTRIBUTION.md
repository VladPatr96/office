# Дистрибуция

Единственный source of truth — `skills/`. Остальные layout являются производными.

| Target | Layout |
|---|---|
| Claude Code | `.claude/skills/<skill>/SKILL.md` |
| Codex | `.codex/skills/<skill>/SKILL.md` |
| Antigravity CLI (agy) | uses the Claude plugin layout as-is — install: `agy plugin install office@office` (marketplace form) или `agy plugin import claude`; verify: `agy plugin validate ./.claude-plugin` |
| OpenCode | `.opencode/skills/<skill>/SKILL.md` |
| Generic agents | `AGENTS.md` |

Команды Antigravity CLI сняты с agy 0.x help, 2026-07-07; перепроверять через `agy help plugin`.

Перегенерация:

```powershell
./scripts/sync-layouts.ps1
```

```bash
./scripts/sync-layouts.sh
```

Generator не правит canonical `skills/`; он только перезаписывает derived layouts.
