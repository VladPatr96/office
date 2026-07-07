---
name: handoff
description: Use when transferring work to another agent, CLI, worktree, human, or future session; also use before context compaction or stopping mid-task.
---

# Handoff

Package state so the next executor can continue without archaeology.

## Include

1. Goal and issue/spec link.
2. Current status: done, in progress, blocked, or needs verification.
3. Files changed or intentionally not touched.
4. Commands run and important outputs.
5. Decisions already made.
6. Open risks and blockers.
7. Exact next step.

## Rules

- Do not paste long logs; cite paths and summarize the signal.
- If crossing CLIs, include install/layout assumptions.
- If handing to a weak executor, include the `weak-dispatch` envelope.
- If handing to verifier, include spec plus artifacts only, not the maker's rationale.

End with a one-line resume prompt.
