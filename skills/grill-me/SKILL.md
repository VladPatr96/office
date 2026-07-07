---
name: grill-me
description: Use when progress is blocked by user-only knowledge and the agent has already gathered everything it can from repo, tools, or primary sources.
---

# Grill Me

Ask the few questions that actually change execution.

## Rules

1. Do not ask what can be discovered.
2. Ask one question at a time unless batching is cheaper for the user.
3. Put the recommended answer first with a short reason.
4. Include the consequence of each option.
5. After two unanswered non-critical questions, choose the documented default.

## Output

For each question:

```text
Decision:
Recommended:
Why:
Options:
Default if silent:
```

Scope, money, production, publishing, and installs never use silent defaults.
