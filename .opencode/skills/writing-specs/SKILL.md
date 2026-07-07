---
name: writing-specs
description: Use whenever writing or rewriting an issue body or file spec before dispatch, or when an executor asked questions, explored unexpectedly, or changed scope.
---

# Writing Specs

A spec removes guesswork from execution. The executor should not need unscripted exploration.

## Required Sections

1. **Goal.** One sentence describing user-visible outcome.
2. **Context.** Files, contracts, prior decisions, relevant excerpts.
3. **Impact.** What depends on the changed area and what could break.
4. **Resolved choices.** Decision plus one-line rationale for every branch.
5. **Steps.** Ordered edits; for code, prefer failing check before fix.
6. **Boundaries.** What not to touch.
7. **DoD and checks.** Exact command, scenario, or review evidence.

## Readiness Check

- Could a new executor complete it without asking a question?
- Are all choices made by the spec author?
- Is verification executable by a fresh context?
- Is the diff budget realistic?
- Is the carrier status set: issue label or file frontmatter?

If an executor improvises, treat it as a spec defect and fix the spec.
