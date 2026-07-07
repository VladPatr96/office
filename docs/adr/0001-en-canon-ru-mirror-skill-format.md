# ADR-0001: English Canon, Russian Mirror, 50-Line Skill Format

Status: Accepted, 2026-07-07 (owner's default decisions from the 2026-07-07 planning session, epic #7).

## Context

Office started as a fully Russian repository. It is becoming a reusable public plugin for
several agent CLIs, so it needs one canonical language, a predictable localization policy,
and a strict skill format that stays cheap to read, verify, and translate. Epic #7 PRs must
reference one permanent document instead of restating these decisions.

## Options Considered

- Keep Russian as canon and translate to English on demand — rejected: blocks distribution.
- Maintain two equal-language sources — rejected: guaranteed drift, double review cost.
- English canon with a Russian mirror updated in the same PR — accepted.
- Free-form long skills vs a hard 50-line cap — the hard cap is accepted.

## Decision

1. English is the canon: `skills/`, `README.md`, `docs/`, and manifests are written in
   English. Russian is a mirror under `ru/` (`ru/README.md`, `ru/skills/<name>.md`).
2. Localization sync: when English changes, the Russian mirror is updated in the same PR;
   the translation executor is a cheap-class model.
3. Skill format: the entire skill file is <=50 lines. Skeleton: frontmatter -> the principle
   in one sentence -> <=7 steps of 1-2 lines each (examples are one-liners inside steps) ->
   exit checklist of <=4 verifiable items. Worked-example sections are forbidden.
4. Skill names: 1-2 words, passing the leading-word test — the name works as a verb phrase
   in a dispatch line ("run done-check"); the name is a pretrained concept where possible.
5. Every skill must record its invocation decision: model-invoked (a `description` with
   English triggers) or user-invoked (`disable-model-invocation: true`).
6. Model routing in texts uses classes only (frontier / everyday / cheap / huge-context);
   concrete model names are never written into skills.
7. Versioning: completing epic #7 is release 1.0.0 — the language switch is a breaking
   change for Russian-speaking users.

## Why

- One canonical language removes drift and makes every PR reviewable against one source.
- Same-PR mirror sync keeps localization a mechanical, delegable step instead of a backlog.
- The 50-line cap keeps skills predictable for cheap executors and fast to verify.
- Verb-usable, pretrained names make skills dispatchable without extra explanation.
- An explicit invocation decision prevents accidental model-triggering of user-only skills.
- Class-based routing survives model churn; names in text rot within months.

## Price We Pay

- Double maintenance of EN + RU: every user-facing change costs a mirror update.
- Migration noise for current Russian-speaking users: paths, names, and the interface
  language change, which is why epic #7 ships as breaking release 1.0.0.
