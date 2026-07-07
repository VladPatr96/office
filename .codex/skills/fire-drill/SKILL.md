---
name: fire-drill
description: Use when the user says "/fire-drill", reports an incident, regression, outage, anomaly, or repeated verification failure.
---

# Fire Drill

Restore control: signal and evidence first, hypotheses next, mutation last.

## Procedure

1. Capture symptom, time, affected users/systems, and recent changes.
2. Create or update a `type:bug` issue.
3. Gather fresh commands, logs, screenshots, or traces; prefer two sources when available.
4. List 3-5 falsifiable hypotheses with expected observation and check command.
5. Label every claim `FACT`, `HYPOTHESIS`, or `UNKNOWN`.
6. For mutation, present narrow actions with risk and rollback; irreversible/external action uses `greenlight`.
7. After fix, check where the same defect class could also exist.
8. Add handoff context to the issue.

## Escalation

Three failed fixes means stop fixing and diagnose architecture or run `consilium`.
