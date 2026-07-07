---
name: done-check
description: Use before closing an issue, marking a file spec done, publishing a deliverable, or telling the user a task is complete.
---

# Done Check

Decide whether work is actually complete.

## Checklist

1. Requested outcome is visible in the artifact.
2. DoD checks ran and evidence is captured.
3. Fresh-context verification returned no unresolved `FAIL`.
4. Changed behavior, install flow, or public docs are documented.
5. No unrelated files were changed.
6. Remaining risks are either fixed, documented, or explicitly accepted.
7. If external action is involved, user approval is recorded.

## Verdicts

- `DONE`: all checks pass.
- `NEEDS_WORK`: concrete mismatch remains.
- `BLOCKED`: completion needs missing access, decision, or external dependency.
- `UNVERIFIED`: evidence is insufficient.

Do not close on `UNVERIFIED`.
