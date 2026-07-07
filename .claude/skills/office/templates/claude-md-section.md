# Office Section For Project Instructions

## Operating Model

- Work is issue-first when GitHub is available; otherwise use file specs under `.office/tasks/`.
- Specs must be self-contained: goal, context, impact, resolved choices, steps, boundaries, DoD.
- Add complexity and conflict metadata before parallel dispatch when using GitHub issues.
- The maker is never the grader. Verification uses fresh context, the spec, artifacts, and command output.
- Route by model class: `frontier`, `everyday`, `cheap`, `huge-context`.
- Ask before global installs, paid services, production deploys, public posts, or external messages.
- Keep docs current when behavior, install flow, structure, or public interfaces change.
- Record reusable failures as lessons: `symptom -> wrong instinct -> correct move`.

## Code Rules

- Prefer the smallest working change.
- Touch only files named by the spec unless a blocker is found.
- Add a failing check before code when practical.
- Keep generated files and caches out of manual edits.
- Report commands run, important output, and residual risk.

## Handoff Shape

```text
Goal:
Status:
Files changed:
Commands run:
Decisions:
Risks/blockers:
Exact next step:
```
