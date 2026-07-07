---
name: recon
description: Use when entering an unfamiliar repo or folder, starting work in a new project, or asked "what is this project"; first 10 minutes build a map sufficient for the task — pulse, strict-order reading, five-line map, task zone.
---

# Recon

The goal of the first 10 minutes is not "understand the project" but a map sufficient for the concrete task.

## Steps

1. **Pulse** — commands, not eyes: `git log --oneline -15` (alive? the last changes are where the life is), `git status` (uncommitted = someone's unfinished work: leave it in place and report it, never revert silently), `ls` (language, structure, manifests).
2. **Read in strict order**, the first existing file at each rung: charter (CLAUDE.md / AGENTS.md / GEMINI.md — local rules override your habits) -> README -> manifest (package.json scripts / pyproject / psd1) -> tests/ (names show what matters) -> CI (.github/workflows — which checks are mandatory).
3. **Five-line map**, written down in the reply or journal: What it does / Entry / Run (exact command) / Verify (exact command) / Danger (secrets, prod, frozen zones). A line you cannot fill is your first task; changes start after Verify and Danger are filled.
4. **Task zone** instead of the whole codebase: 2-3 words from the task wording -> grep -> 1-2 files around the matches -> their imports. Read the task zone only; reading the project "just in case" burns context.

## Exit checklist

- Pulse commands executed and their output read.
- Reading order followed without skips or reordering.
- Five-line map written down; Verify and Danger filled before any change.
- Task zone named: matched files and their imports listed.
