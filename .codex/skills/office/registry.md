# Office Skill Registry

Use this registry when "hiring" a department, agent, tool, or skill. Prefer verified entries. Mark anything unverified as a candidate and ask for approval before installation.

## Core

| Name | Source | Use | Department | Install / Access |
|---|---|---|---|---|
| Office compact skills | `skills/` | Specs, verification, weak dispatch, lessons, handoffs, rituals | all | bundled |
| GitHub CLI | https://cli.github.com | Issues, labels, PRs, release flow | board/devops | `gh auth login` |
| Graphify | https://github.com/safishamsi/graphify | Query-first code/doc graph | all | `uv tool install graphifyy` |
| Codex layout | `.codex/skills/` | Run Office skills from Codex | engineering | `./install.ps1 -Target codex` |
| Claude plugin layout | `.claude-plugin/` | Claude Code plugin distribution | all | `/plugin install office@office` |
| Generic AGENTS.md | `AGENTS.md` | CLI-neutral operating rules | all | copy into target repo |

## Office Bricks

| Skill | Use | Owner |
|---|---|---|
| `casting` | hiring a department, agent, tool, or skill | board |
| `memo` | turning raw work into a ready issue spec | board |
| `greenlight` | external or irreversible action approval | board |
| `fire-drill` | incident and regression response | qa/ops |
| `debrief` | weekly, epic, and incident retros | board |
| `corporate` | monthly OKR and business review | board |

## Product And Operations

| Name | Source | Use | Department | Status |
|---|---|---|---|---|
| Personal Corp PM skills | installed plugin when available | PRD, prioritization, metrics, feedback | product | optional |
| Weekly planning / retro skills | installed plugin when available | Rituals and reporting | board | optional |
| GitHub issue manager skills | installed plugin when available | Issue tracking and session context | board | optional |
| `notebooklm-mcp-cli` | candidate | Grounded queries over a knowledge base without burning agent context | research/docs | verify before install |
| `ccteams` | candidate | Team-style Claude/Codex agent coordination and Fable legacy workflows | engineering/ops | verify before install |

## Design Stack Candidates

| Name | Use | Approval Gate |
|---|---|---|
| Open Design style workflow | Open assets, design briefs, component specs | Ask before installing/uploading |
| Google Stitch style workflow | Rapid UI concepting and screen generation | Ask before external access or upload |
| Repo-native HTML/CSS/SVG | No external tool needed | Safe default |

## Search Order

1. This registry.
2. Existing project skills and `AGENTS.md`.
3. Official marketplaces or verified repositories.
4. Web search from primary sources.

Every hiring/tool offer includes: need, department, agent/tool, install/access command, data exposure, cost vs value, fallback, and first task.
