---
name: planerka
description: Use when the user says "/planerka", asks what is waiting, starts a session in a repo with `company/state.md`, or needs founder decisions batched instead of asked one by one.
---

# Planerka

Run a compact founder standup: facts, decisions, next pipeline move.

## Inputs

Read `company/state.md`, `company/inbox.md` if present, recent issue changes, and any open blocker notes. Do not replay raw agent reports.

## Procedure

1. Summarize facts in 3-6 lines: closed work, failed verification, blockers, budget/routing changes.
2. Present up to five decisions. Each decision has a recommendation, reason, and cost/value note when it affects tools, hiring, money, or scope.
3. Keep extra non-blocking questions in `state.md` for the next standup.
4. Record decisions in `company/meetings/YYYY-MM-DD-planerka.md`.
5. Update `company/state.md` and dispatch newly unblocked work.

Silence means the recommended default is accepted only when that rule is already documented for the session or project. Scope, money, production, publishing, installs, and external messages never use silent defaults.
