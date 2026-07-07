# Карта кирпичей

Office состоит из компактных bricks: один skill, одна задача, один trigger surface. Router указывает на bricks, сами bricks несут процедуру.

## Стандарт

- Канон: `skills/<name>/SKILL.md` на английском.
- Целевой размер: не больше 50 строк.
- `description` отвечает "когда включать", а не пересказывает workflow.
- Длинные примеры и шаблоны лежат рядом в docs/templates.
- Русское зеркало: `ru/skills/<name>.md`.

## Жизненный цикл

| Стадия | Команды | Дисциплины |
|---|---|---|
| Intake | `solve`, `office`, `frame`, `grill-me` | `recon`, `premortem` |
| Spec | `writing-specs` | `weak-dispatch`, `reproduce` |
| Execution | `next-step`, `loop`, `handoff` | `done-check` |
| Acceptance | `verifying` | `lesson` |
| Ops | `planerka`, `consilium`, `design-stack` | `unstuck` |

Новые bricks создаются только из наблюдаемого повторяющегося failure pattern.
