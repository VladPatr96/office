---
name: memo
description: Use when the user says "/memo" or asks to turn a task, bug, idea, or request into an Office issue spec before dispatch.
---

# Memo

Turn raw work into a self-contained GitHub issue spec.

## Procedure

1. Classify input: feature, bug, chore, tooling, or ritual.
2. Separate facts from hypotheses.
3. If out of scope or needing founder decision, create `status:blocked` or park with reason; do not dispatch.
4. Set complexity: S single artifact, M multi-file without architecture choice, L epic/unknown architecture.
5. Add conflict metadata: `conflict_paths`, `parallel_safe`, `depends_on`.
6. Decide tooling: inline if cheap, separate `type:tooling` issue if larger.
7. Use `writing-specs` and `skills/office/templates/spec-issue.md`.
8. Rewrite the issue body fully and apply `type:*`, `dept:*`, and status labels.

## Output

Return: `created #N, status <status>, queued after #M`.
