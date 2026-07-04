<!-- Карта компании: company/README.md целевого репозитория. -->

# Компания проекта {{PROJECT_NAME}}

**Цель проекта:** {{одна строка из Intake}}

**Стек:** {{стек}} · **Ограничения:** {{ограничения}}

## Оргструктура

| Отдел | Лейбл | Миссия | Ownership | Чартер |
|-------|-------|--------|-----------|--------|
| board (CEO) | — | оркестрация, спеки, развилки, ритуалы | company/ | [board/](board/README.md) |
| engineering | dept:engineering | реализация по спекам | {{src-пути}} | [engineering/](engineering/README.md) |
| qa | dept:qa | верификация DoD, финальные ревью | — (read-only) | [qa/](qa/README.md) |

## Правила (кратко)

- **Issue-first**: любая задача сначала issue со спекой в теле; статусы — лейблы `status:*`.
- **Query-first**: контекст из `graphify query` / `company/knowledge/codemap.md`, не из чтения всей базы.
- Агент меняет только пути ownership-карты своего отдела.
- Приёмка — только verifier; закрытие — коммент `<SHA> — вердикт`.

## Артефакты

- Задачи: GitHub Issues · Эпики: milestones
- Собрания: `company/meetings/` · Отчёты: `company/reports/`
- Карта кода: `graphify-out/` (или `company/knowledge/codemap.md`)
