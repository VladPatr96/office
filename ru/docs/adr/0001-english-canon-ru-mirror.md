# ADR-0001: Английский канон и русское зеркало

## Статус

Принято, 2026-07-07.

## Решение

- Канон репозитория — английский: `README.md`, `docs/`, `skills/`, manifests, templates, generated layouts.
- Русское зеркало живёт в `ru/README.md`, `ru/docs/` и `ru/skills/<name>.md`.
- Любое изменение user-facing канона обновляет зеркало в том же PR.
- Каждый canonical `SKILL.md` целится в <=50 строк.
- Маршрутизация моделей идёт классами: `frontier`, `everyday`, `cheap`, `huge-context`.

## Последствия

Русский текст вне `ru/` считается drift, кроме proper nouns и исторических упоминаний.
