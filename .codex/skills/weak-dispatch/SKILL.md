---
name: weak-dispatch
description: Use whenever dispatching work to a cheap, local, unreliable, or narrow executor; also use after any executor fails verification because it improvised or exceeded scope.
---

# Weak Dispatch

Weak executors can pass strong verification when the process removes ambiguity.

## Rules

1. One target file or artifact group.
2. Expected diff about 40 lines or less; split larger work before dispatch.
3. Context pack is inside the spec; executor does not explore beyond it.
4. All choices are pre-decided by the spec author.
5. Machine gates run before the executor reports completion.
6. No refactors, renames, dependency changes, or style edits beyond the spec.
7. If the task requires mutation outside the repo, route through `greenlight`.

## Dispatch Envelope

Include this with the spec:

```text
Profile: weak.
Change only the target files named in the spec.
If the diff grows beyond the stated budget, stop and report.
Run these gates before reporting: <commands>.
Attach gate output and a file list.
Unclear instruction means stop, not improvise.
```

After a failed verification, rewrite the spec with the verifier's concrete facts before retrying.
