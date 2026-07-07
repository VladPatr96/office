# Office

Office is a curated company operating system for coding agents. It turns a loose project into an issue-first pipeline with departments, self-contained specs, fresh-context verification, lessons, and install layouts for multiple CLIs.

The canonical language of this repository is English. Russian docs live under `ru/` and must be updated in the same PR as the English source.

## Two Entrypoints

| Entrypoint | Use it for | Output |
|---|---|---|
| `/solve <task>` | One-off work that does not need a standing company | A bounded task spec, execution, and verification |
| `/office <goal>` | Ongoing product/business work | Repo bootstrap, GitHub issue pipeline, departments, rituals, and lessons |

## What Office Adds

- **Issue-first execution.** Work starts as a self-contained issue or file spec, not a vague chat instruction.
- **Verifier acceptance.** The maker is never the grader; a fresh-context verifier checks evidence against the spec.
- **Weak-dispatch discipline.** Cheap/local models get atomic tasks, context packs, machine gates, and retry rules.
- **Departments.** Agents are organized by business function, not by "everything is engineering".
- **Curated skills, not skill hoarding.** Office keeps a small set of high-leverage skills and a registry for hiring more.
- **Living lessons.** Failures become reusable lessons: symptom -> wrong instinct -> correct move.

## Skill Catalog

| Skill | What it is for | How to use | Example phrase |
|---|---|---|---|
| `office` | Standing company pipeline | Start or run a company-OS workflow | `/office build a SaaS MVP` |
| `solve` | One-off task intake | Triage S/M/L and execute without company bootstrap | `/solve fix the README install steps` |
| `skill-craft` | Writing compact skills | Create or revise a skill by failure-driven design | `write a skill for flaky deploy triage` |
| `writing-specs` | Self-contained specs | Before dispatching an issue/file task | `turn this bug into a spec` |
| `verifying` | Acceptance discipline | Check work with fresh context and evidence | `verify the completed task` |
| `weak-dispatch` | Cheap/local executor routing | Dispatch a small task to a weak model safely | `send this to a cheap executor` |
| `planerka` | Founder standup | Batch decisions and unblock the pipeline | `/planerka` |
| `unstuck` | Recover from loops | Diagnose a stuck task and choose the next move | `I am stuck on this failing test` |
| `done-check` | Final readiness check | Decide whether work is actually complete | `is this ready to close?` |
| `recon` | Bounded investigation | Collect facts before writing a spec | `recon this payment bug` |
| `handoff` | Transfer work | Package context for another CLI/agent/human | `handoff this issue to Codex` |
| `next-step` | Reduce ambiguity | Pick the smallest useful next action | `what is the next step?` |
| `reproduce` | Bug reproduction | Create a reliable repro before fixing | `reproduce this crash` |
| `frame` | Problem framing | Convert vague goals into decision-ready scope | `frame this feature request` |
| `premortem` | Risk scan | Find likely failure modes before execution | `premortem this migration` |
| `lesson` | Lessons log | Record confirmed failure patterns | `write a lesson from this bug` |
| `grill-me` | Focused interview | Ask only unresolved blocking questions | `grill me before writing the spec` |
| `loop` | Bounded agent loop | Run trigger -> execute -> verify -> learn cycles | `run a loop on this issue` |
| `consilium` | Independent opinions | Get 2-4 isolated perspectives for high-stakes choices | `run a consilium on the architecture` |
| `design-stack` | Design tooling offers | Offer Open Design / Stitch-style design help with consent | `hire design-stack for this UI` |

## Comparison

| Project family | Main strength | Office difference |
|---|---|---|
| Paperclip-style context tools | Fast prompt/context capture | Office adds issue-first execution and verifier acceptance |
| `ccteams` / team harnesses | Multiple specialized agents | Office adds department charters, rituals, and business ownership |
| `obra/superpowers` | Strong engineering disciplines | Office imports the small-skill discipline and adds company operations |
| `mattpocock/skills` | Memorable compact skills | Office adapts the compact-skill pattern with MIT attribution and an operating pipeline |
| Skills marketplaces / `skills.sh` / Find Skills CLI | Broad discovery | Office is intentionally curated; new skills are hired only for a concrete use case |

## Install

Use one install path per CLI to avoid duplicate skills.

| Target | Command |
|---|---|
| Claude Code plugin | `/plugin marketplace add VladPatr96/office` then `/plugin install office@office` |
| Codex user skills | `./install.ps1 -Target codex` or `./install.sh codex` |
| Claude user skills | `./install.ps1 -Target claude` or `./install.sh claude` |
| OpenCode-style user skills | `./install.ps1 -Target opencode` or `./install.sh opencode` |
| Generic project agents | Copy or symlink `AGENTS.md` into the target project |

Distribution artifacts are generated from canonical `skills/`:

```powershell
./scripts/sync-layouts.ps1
```

```bash
./scripts/sync-layouts.sh
```

## Repository Layout

| Path | Purpose |
|---|---|
| `skills/` | Canonical English skills; each `SKILL.md` should stay <=50 lines |
| `skills/office/templates/` | Company templates, blueprints, agent charters, and issue/spec forms |
| `ru/` | Russian mirror of README and skill docs |
| `docs/` | Method, ADRs, distribution notes, traceability |
| `.claude-plugin/`, `.codex-plugin/` | Plugin manifests |
| `.claude/`, `.codex/`, `.gemini/`, `.opencode/` | Generated or compatibility layouts |
| `scripts/` | Layout sync scripts |

## Model Routing

Office routes by capability class, never by remembered model names:

| Class | Use |
|---|---|
| `frontier` | hard architecture, ambiguous product choices, high-stakes synthesis |
| `everyday` | normal implementation, verification, documentation |
| `cheap` | recon, repetitive edits, weak-dispatch tasks |
| `huge-context` | large codebase/document sweeps when retrieval is insufficient |

Resolve concrete model names from the active tool at runtime.

## License And Attribution

MIT. The compact-skill style is adapted with attribution to Matt Pocock's `skills` project and related small-skill practices; Office text and procedures are original.
