# Brick Map

Office is built from compact bricks: one skill, one job, one trigger surface. The router skill points to bricks; the bricks carry the discipline.

## Standard

- Canonical skill files are English and live in `skills/<name>/SKILL.md`.
- Target length is <=50 lines. Move long examples, templates, and references next to the skill.
- `description` says when to load the skill, not how to execute it.
- Each skill must end in a concrete artifact, decision, or verification result.
- Russian mirrors live in `ru/skills/<name>.md`.

## Lifecycle

| Stage | Command bricks | Discipline bricks |
|---|---|---|
| Intake | `solve`, `office`, `frame`, `grill-me` | `recon`, `premortem` |
| Specification | `memo`, `writing-specs` | `weak-dispatch`, `reproduce` |
| Execution | `next-step`, `loop`, `handoff` | `done-check` |
| Acceptance | `verifying` | `lesson` |
| Operations | `planerka`, `corporate`, `debrief`, `fire-drill`, `greenlight` | `unstuck` |
| Hiring | `casting`, `design-stack`, `consilium` | `skill-craft` |

## Backlog Policy

New bricks are created only from observed failure patterns. If a proposed skill does not prevent a repeated shortcut, keep it as a checklist in docs instead.

## Attribution

The compact, memorable skill style is adapted with MIT attribution to Matt Pocock's `skills` project and neighboring small-skill practices. Office keeps its own wording and issue-first operating model.
