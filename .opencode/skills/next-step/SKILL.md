---
name: next-step
description: Use when the user asks what to do next, the task has too many possible directions, or progress requires choosing one bounded action.
---

# Next Step

Choose one useful move, not a roadmap.

## Procedure

1. State the current objective.
2. List at most three viable moves.
3. Score each by unblock value, risk, and verification ease.
4. Pick the smallest move that creates evidence.
5. Define the check that proves it worked.

## Output

Return:

- chosen next step;
- why it beats the alternatives;
- exact command/file/action;
- verification check;
- what decision comes after the result.

If the objective itself is unclear, use `frame`.
