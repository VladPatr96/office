---
name: recon
description: Use before writing a spec when facts are missing, the codebase area is unknown, external behavior is unclear, or the next step depends on current evidence.
---

# Recon

Gather just enough facts to write a self-contained spec.

## Rules

1. Start with the question to answer.
2. Prefer indexes, search, existing docs, and narrow reads over broad file dumps.
3. Record file paths, commands, URLs, and dates for volatile facts.
4. Separate observed facts from inferences.
5. Stop when the spec can be written; do not solve during recon.

## Output

Return:

- question answered;
- facts with evidence;
- unknowns that remain;
- recommended next skill (`writing-specs`, `reproduce`, `grill-me`, or `consilium`).

If current external data matters, verify it from primary sources.
