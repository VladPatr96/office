---
name: greenlight
description: Use when the user says "/greenlight" or an action goes outside the repo: publishing, deploy, email, spending, global install, remote creation, upload, or irreversible mutation.
---

# Greenlight

External and irreversible actions need explicit approval.

## Procedure

1. Verify readiness before asking: artifact, status, gates, target, and rollback.
2. Offer 2-3 narrow options; put the recommended option first.
3. Show consequence, risk, and rollback for each option.
4. For irreversible action, require typed confirmation such as `GREENLIGHT deploy production`.
5. Execute only the approved scope.
6. Record receipt: command, link, SHA, time, and observed result.

## Rule

A pre-approved channel in `company/okr.md` or a charter can skip repeated greenlights, but the first use of the channel always needs this protocol.
