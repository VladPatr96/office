---
name: verifying
description: Use whenever accepting completed work from an executor, especially after code/docs changed, after a failed retry, or when the same context is tempted to self-review.
---

# Verifying

Acceptance returns facts, not praise. The maker is never the grader.

## Inputs

Use only the spec, the produced artifacts or diff, and the commands/scenarios named in DoD. Do not rely on the executor's explanation.

## Procedure

1. Reconstruct the requested outcome from the spec.
2. Inspect only the relevant artifacts.
3. Run the exact checks from DoD, or mark missing checks as `UNVERIFIED`.
4. Return one row per acceptance point: `PASS`, `FAIL`, or `UNVERIFIED` with evidence.
5. If docs were part of DoD, verify them separately.

## Failure Ladder

- Failures 1-2: send concrete mismatches back to the same executor.
- Failure 3: use a fresh executor and include verifier diagnosis.
- Failure 4: mark the issue/file spec blocked and report the blocker briefly.

Fresh-context checking follows context-isolation practice; see `docs/BRICK-METHOD.md` for source notes.
