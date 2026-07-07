---
name: solve
description: Use when the user says "/solve" or gives a one-off task that should be completed without standing company bootstrap, GitHub workflow, departments, or rituals.
---

# Solve

Complete a one-off task with the smallest process that still preserves verification.

## Boundaries First

Stop for approval before irreversible actions, spending, production deploys, public posting, external messages, or global installs. If the result cannot be verified by an AI, state proxy criteria. If access/tooling is missing, say what is blocked and offer the nearest useful fallback.

## Triage

| Size | Criteria | Procedure |
|---|---|---|
| S | One reversible step, no durable artifact | Do it directly and report the result |
| M | More than one step, durable artifact, or verification needed | Write `.office/tasks/<slug>.md`, execute, verify |
| L | Ongoing process or several epics | Offer `/office`; do not auto-bootstrap |

## M Procedure

1. Use `frame` or `recon` only for missing facts.
2. Write a self-contained file spec with `writing-specs`.
3. Dispatch execution; use `weak-dispatch` for cheap/local executors.
4. Verify with `verifying`, using only the spec and artifacts.
5. Set spec status to `done`, `blocked`, or `needs-retry`.

If an S task grows into M, stop, write the spec retroactively, record what already changed, and continue through verification.
