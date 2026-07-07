# ADR-0001: English Canon And Russian Mirror

## Status

Accepted, 2026-07-07.

## Context

Office is becoming a reusable public plugin for several agent CLIs. English must be the canonical interface for broad distribution, while the original Russian audience still needs a usable mirror.

## Decision

- Canonical source is English in `README.md`, `docs/`, `skills/`, manifests, templates, and generated layouts.
- Russian mirror lives in `ru/README.md` and `ru/skills/<name>.md`.
- Any change to canonical user-facing docs or skills updates the Russian mirror in the same PR.
- Every canonical `SKILL.md` targets <=50 lines.
- Model routing uses capability classes: `frontier`, `everyday`, `cheap`, `huge-context`.
- Concrete model names are resolved from the active CLI/tool at runtime, not from memory.

## Consequences

- Russian text outside `ru/` is treated as drift unless it is a proper noun or historical note.
- Long Russian legacy templates can be archived under `ru/` only if they are actively maintained.
- Plugin manifests and install instructions become CLI-neutral.
