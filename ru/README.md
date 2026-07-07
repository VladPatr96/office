# Office

Office — это курируемая операционная система компании для coding agents: issue-first конвейер, отделы, самодостаточные спеки, верификация свежим контекстом, уроки и раскладки под несколько CLI.

Канон репозитория — английский. Это зеркало нужно обновлять в том же PR, где меняются `README.md`, `docs/`, `skills/` или манифесты.

## Два входа

| Вход | Когда использовать | Результат |
|---|---|---|
| `/solve <задача>` | Разовая задача без постоянной компании | Спека, исполнение, проверка |
| `/office <цель>` | Постоянная продуктовая/бизнес-работа | Bootstrap репо, issues, отделы, ритуалы, уроки |

## Чем отличается Office

- Работа начинается со спеки в issue или файле, а не с расплывчатого чата.
- Исполнитель не принимает собственную работу; проверяет отдельный verifier.
- Слабые/дешёвые модели получают атомарные задачи, контекст-пакеты и машинные гейты.
- Отделы создаются по бизнес-функциям.
- Новые skills нанимаются под конкретный use case, а не ради коллекции.
- Ошибки превращаются в уроки формата `симптом -> неверный инстинкт -> правильный ход`.

## Дополнительные bricks из v1 merge

В зеркало также добавлены `casting`, `corporate`, `debrief`, `fire-drill`, `greenlight`, `memo`: найм ролей, business review, ретро, incident response, approval gate и перевод raw request в issue spec.

## Установка

| Цель | Команда |
|---|---|
| Claude Code plugin | `/plugin marketplace add VladPatr96/office`, затем `/plugin install office@office` |
| Codex skills | `./install.ps1 -Target codex` или `./install.sh codex` |
| Claude user skills | `./install.ps1 -Target claude` или `./install.sh claude` |
| OpenCode-style skills | `./install.ps1 -Target opencode` или `./install.sh opencode` |
| Generic agents | Скопировать `AGENTS.md` в проект |

Генерация раскладок из канона:

```powershell
./scripts/sync-layouts.ps1
```

```bash
./scripts/sync-layouts.sh
```

## Правило моделей

Office маршрутизирует по классам: `frontier`, `everyday`, `cheap`, `huge-context`. Конкретные модели нужно брать из активного инструмента в момент работы, а не из памяти.
