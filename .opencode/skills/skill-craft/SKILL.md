---
name: skill-craft
description: Use when creating or revising an Office skill, especially after observing a repeated agent shortcut, vague trigger, bloated SKILL.md, or missing Russian mirror.
---

# Skill Craft

Write skills as compact behavior patches, not essays.

## Method

1. Name the failure pattern the skill prevents.
2. Capture 2-3 stress cases where a baseline agent cuts the corner.
3. Write the smallest procedure that blocks those exact shortcuts.
4. Keep `description` trigger-only: context, symptoms, occasion.
5. Put long examples/templates in adjacent docs.
6. Add or update `ru/skills/<name>.md`.

## Constraints

- One skill, one job.
- `name` is kebab-case.
- `description` stays under 1024 characters.
- `SKILL.md` target is 50 lines or fewer.
- Output is a decision, artifact, verification result, or handoff.

Run the line-count check from the release checklist before claiming done.
