---
name: reproduce
description: Use before fixing a bug when the failure is not yet reliably reproduced, or when a verifier needs a deterministic scenario instead of a vague report.
---

# Reproduce

Make the failure observable before fixing it.

## Procedure

1. Capture the reported symptom exactly.
2. Identify environment, input, command, or scenario.
3. Run the smallest check that should fail.
4. If it does not fail, narrow differences until it does or mark `UNVERIFIED`.
5. Preserve the repro as a test, script, fixture, or documented manual scenario.

## Output

Return:

- repro command or scenario;
- expected failure;
- actual output;
- files created for the repro;
- whether the next step is `writing-specs` or `unstuck`.

No fix starts until the repro is known or explicitly impossible.
