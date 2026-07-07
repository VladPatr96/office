---
name: skill-craft
description: Use when writing a skill, editing a skill, skill too long, or pruning a skill; tight discipline for model-invoked office skills that stay predictable, short, and behavior-changing.
---

# Skill-craft

Predictability is the root virtue: a skill gives the same process every run, not the same output.

## Invocation

Model-invoked fits skills other office processes must discover themselves; description quality pays the context cost.
User-invoked fits rare manual commands; `disable-model-invocation: true` saves context but makes the human the index.
Router skill is the cure when many user-invoked skills make discovery harder than execution.

## Description

Front-load the leading word and the highest-signal trigger.
Keep one trigger per branch; collapse synonyms that call the same behavior.
Use pretrained leading words as anchors: `tight` can replace "fast, deterministic, low-overhead"; `red` can replace "trusted test cycle".
Repeat the anchor token where it should steer execution instead of paraphrasing it.

## Hierarchy

Inline only what every invocation needs.
Put branch-specific detail behind a named reference pointer.
Prefer the ladder: SKILL.md steps, SKILL.md reference, external reference pointer.
Move sediment down the ladder when a line stops changing behavior on most runs.

## Completion

Each action needs a checkable completion criterion: done must be distinguishable from not done.
Make criteria exhaustive: "every X accounted for" beats "make a list".
Sharpen the current criterion before revealing later work when agents finish prematurely.

## Pruning

Run the no-op test on every line: if default model behavior would be the same, cut or rewrite it.
Replace duplication with one stronger trigger, rule, or reference.
Replace sprawl with a router, a pointer, or a narrower skill.
State desired behavior positively; use guardrails only when paired with the positive path.
Prefer rules over samples; keep a sample only when it is the shortest reliable behavior change.

Adapted from mattpocock/skills — writing-great-skills (MIT).
