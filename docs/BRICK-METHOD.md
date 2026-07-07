# Brick Method

Use this method when creating or revising any Office skill.

## Red -> Green -> Refactor

1. **Red.** Run or reconstruct 2-3 stress cases where the baseline agent cuts corners. Capture exact failure symptoms, not vague opinions.
2. **Green.** Write the smallest skill that blocks those exact shortcuts.
3. **Refactor.** Re-run the same cases. If the agent finds a new shortcut, patch that shortcut only.

## CSO Description Rule

`description` is trigger surface only: Context, Symptoms, Occasion. Do not summarize the workflow there, because weaker models may execute the summary and skip the body.

Good:

```yaml
description: Use WHENEVER accepting completed work from an executor, especially after code or docs changed and the same agent is tempted to self-review.
```

Bad:

```yaml
description: Runs tests, checks docs, compares the diff, and returns PASS or FAIL.
```

## Skill DoD

- `name` is kebab-case.
- `description` is <=1024 characters and trigger-only.
- `SKILL.md` target is <=50 lines.
- The skill has one job and one clear output.
- Heavy mechanics live in adjacent templates/docs.
- Russian mirror is updated in `ru/skills/<name>.md`.

## Verification Notes

Fresh-context verification is a context-isolation pattern: the verifier sees the spec and artifacts, not the maker's rationalizations. This aligns with Lance Martin's context engineering taxonomy and Anthropic's public note that automated code review would have caught roughly a third of past incident bugs:

- https://rlancemartin.github.io/2025/06/23/context_engineering/
- https://www.anthropic.com/institute/recursive-self-improvement
