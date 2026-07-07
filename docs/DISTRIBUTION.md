# Distribution

Office uses `skills/` as the single source of truth. Generated layouts are compatibility layers.

## Targets

| Target | Layout | Notes |
|---|---|---|
| Claude Code | `.claude/skills/<skill>/SKILL.md` | Plugin install remains preferred |
| Codex | `.codex/skills/<skill>/SKILL.md` | User-skill compatible layout |
| Gemini | `.gemini/commands/<skill>.toml` | Command wrappers that point to canonical skills |
| OpenCode | `.opencode/skills/<skill>/SKILL.md` | Generic skill directory layout |
| Generic agents | `AGENTS.md` | Repository-level operating rules |

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
