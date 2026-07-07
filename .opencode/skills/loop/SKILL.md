---
name: loop
description: Use when running an iterative agent workflow that needs bounded retries, verifier gates, memory writes, and an explicit stop condition.
---

# Loop

Run disciplined iterations instead of open-ended prompting.

## Cycle

1. Trigger: name the issue/spec and success metric.
2. Load rules: relevant skill, spec, and constraints only.
3. Execute one bounded unit.
4. Verify with fresh context and evidence.
5. Write memory: status, lesson candidate, changed files.
6. Stop or retry.

## Stop Conditions

- success passes `done-check`;
- three retries fail;
- budget/time limit is hit;
- verifier returns blocked;
- user approval is required.

Never let the executor grade itself or silently expand scope between retries.
