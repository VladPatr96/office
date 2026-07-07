# CLAUDE.md

## Repository Rules

- Canonical language is English in `README.md`, `docs/`, `skills/`, manifests, and generated layouts.
- Russian mirror lives in `ru/`. Any PR that changes English user-facing docs or skills must update the matching Russian mirror.
- Keep every canonical `SKILL.md` compact: target <=50 lines, one job per skill, heavy data in adjacent templates/docs.
- Route models by class (`frontier`, `everyday`, `cheap`, `huge-context`), not by remembered product names. Resolve concrete models from the active CLI at runtime.
- Specs are issue-first when GitHub is available; file specs are allowed for `/solve` or offline work.
- The maker is never the grader. Use a fresh-context verifier with concrete evidence before accepting work.
- Do not install global tools, plugins, MCP servers, or paid services without an explicit offer and user approval.

## Orchestration Workflow

The orchestrator plans, writes specs, resolves tradeoffs, and synthesizes. Narrow agents execute bounded work. Verification is a separate role with fresh context and artifacts, not a self-review.

Use `frontier` for high-stakes decisions, `everyday` for normal execution and verification, `cheap` for recon and atomic weak-dispatch work, and `huge-context` only when retrieval plus targeted reads is not enough.

If context is low or the task crosses CLIs, create a handoff: goal, current state, changed files, commands run, open risks, exact next step.
