---
name: premortem
description: Use before risky implementation, migration, release, external action, or tool adoption when failure would be expensive or hard to reverse.
---

# Premortem

Find likely failure modes before starting.

## Procedure

1. State the planned action and success metric.
2. Imagine it failed after merge/release.
3. List 3-7 plausible causes.
4. Rank by likelihood times impact.
5. Add one prevention or detection check for the top risks.
6. Decide whether to proceed, shrink scope, or run `consilium`.

## Output

Return a risk table: risk, trigger, prevention, detection, owner.

If the plan involves money, production, publishing, or user data, stop for explicit approval before execution.
