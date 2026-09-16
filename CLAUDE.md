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

<!-- hq:start -->
## Штаб hq

Задачи, решения и память по этому проекту живут в штабе `D:/projects/my_projects/hq`, карточка — `projects/skill-flash/README.md`.

- **Что в работе** — раздел «Открытые задачи» в карточке и файлы `projects/skill-flash/tasks/<номер>-<slug>.md`. Это зеркало GitHub Issues: руками не правь, оно пересобирается.
- **Что уже решали** — «Память решений» в карточке и разборы в `projects/skill-flash/memory/`. Упёрся или задача похожа на прошлую — сперва посмотри туда, а не решай заново.
- **Задача** — один GitHub issue с меткой `task` и проверяемым условием готовности. Заводит его человек командой `/zadacha`; сам issue не создавай.
- **Состояние** — метки `status:todo`, `status:in-progress`, `status:acceptance`; Done — закрытый issue. В `Done` переводит только человек.
<!-- hq:end -->
