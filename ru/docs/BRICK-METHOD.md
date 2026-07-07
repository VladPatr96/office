# Метод кирпичей

Используй при создании или ревизии Office skill.

## Red -> Green -> Refactor

1. **Red.** Зафиксируй 2-3 stress cases, где baseline agent срезает угол.
2. **Green.** Напиши минимальный skill, который закрывает именно эти shortcut.
3. **Refactor.** Повтори stress cases и правь только новые найденные обходы.

## CSO-правило description

`description` — это только trigger surface: context, symptoms, occasion. Не пересказывай там процедуру, иначе слабая модель может выполнить summary и не открыть тело skill.

## DoD skill

- `name` в kebab-case.
- `description` до 1024 символов.
- `SKILL.md` целится в <=50 строк.
- Один skill решает одну задачу.
- Тяжёлая механика вынесена рядом.
- `ru/skills/<name>.md` обновлён.

Fresh-context verification — это context-isolation pattern: verifier видит спеку и артефакты, а не рационализации исполнителя.
