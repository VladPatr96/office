---
name: unstuck
description: Use when a task has looped, failed the same check twice, produced contradictory explanations, or the agent says it is stuck without a concrete next experiment.
---

# Unstuck

Break loops by replacing guesses with a narrow diagnosis.

## Procedure

1. State the stuck symptom in one sentence.
2. List the last two attempted moves and their evidence.
3. Separate facts from interpretations.
4. Pick one hypothesis to test next; reject broad rewrites.
5. Define the smallest experiment and expected signal.
6. If the experiment fails, write or update a `lesson` candidate.

## Output

Return: symptom, known facts, rejected instincts, next experiment, stop condition.

If the task lacks a reproducible failure, switch to `reproduce` before fixing.
