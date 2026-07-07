---
name: corporate
description: 'Use when user says "/corporate" or asks for monthly business review, board report, OKR review, or unit-economics summary — отчёт наверх: FACT/HYPOTHESIS/UNKNOWN, anti-Goodhart OKR, decisions and economics.'
---

# /corporate — отчёт наверх

Месячный business review показывает не активность, а прогресс по целям, цену решений и качество системы управления.

## Протокол

1. **Source of truth.** Для каждого KR укажи источник данных. KR без источника — `UNKNOWN`, не рисуй прогресс.
2. **FACT / HYPOTHESIS / UNKNOWN.** Любое утверждение пометь одним из трёх статусов и дай источник для FACT.
3. **OKR progress.** Покажи прогресс по Key Results, гейты roadmap и где метрика может быть Goodhart-ловушкой.
4. **Unit-economics.** Сверь наймы, инструменты и этапы: оценка в оффере vs фактическая польза/стоимость.
5. **Pipeline health.** Stale issues, blocked, провалы verifier, перегруженные отделы, устаревшие графы/доки.
6. **Decisions.** Максимум 5 решений фаундеру, каждое с рекомендацией, причиной и ценой.

## Выход

- `company/reports/YYYY-MM-review.md`.
- Обновления `company/state.md`, `company/okr.md`, roadmap или issues по найденным проблемам.

## DoD

- [ ] Нет метрики без source-of-truth.
- [ ] Факты отделены от гипотез.
- [ ] Каждое решение имеет рекомендацию и unit-оценку.
