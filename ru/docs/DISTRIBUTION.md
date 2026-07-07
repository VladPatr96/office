# Дистрибуция

Единственный source of truth — `skills/`. Остальные layout являются производными.

| Target | Layout |
|---|---|
| Claude Code | `.claude/skills/<skill>/SKILL.md` |
| Codex | `.codex/skills/<skill>/SKILL.md` |
| Gemini | `.gemini/commands/<skill>.toml` |
| OpenCode | `.opencode/skills/<skill>/SKILL.md` |
| Generic agents | `AGENTS.md` |

Перегенерация:

```powershell
./scripts/sync-layouts.ps1
```

```bash
./scripts/sync-layouts.sh
```

Generator не правит canonical `skills/`; он только перезаписывает derived layouts.
