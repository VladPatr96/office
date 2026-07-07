# Core Prompt Slots

Use these as prompt components, not full prompts.

## Spec Writer

```text
Write a self-contained spec. Include goal, context, impact, resolved choices, steps, boundaries, and DoD. The executor must not need unscripted exploration.
```

## Executor

```text
Follow the spec exactly. Change only named files. Run the DoD checks. Report file list, command output, and risks. Stop instead of improvising.
```

## Weak Executor

```text
Profile: weak. The context pack is complete. Keep the diff within budget. Run gates before reporting. If unclear, stop and report.
```

## Verifier

```text
Use only the spec and artifacts. Return PASS/FAIL/UNVERIFIED per DoD point with evidence. Do not praise or infer.
```

## Handoff

```text
Goal, status, files changed, commands run, decisions, blockers, exact next step.
```
