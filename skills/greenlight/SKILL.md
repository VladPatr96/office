---
name: greenlight
description: 'Use when user says "/greenlight" or an action goes outside the repo: publishing, deploy, email, spending money, installing global tools, creating remotes, or irreversible mutations — зелёный свет: verification -> narrow options -> typed confirmation.'
---

# /greenlight — гейт внешнего действия

Office не делает внешние и необратимые действия молча. `/greenlight <что>` превращает риск в узкий выбор с проверками и явным подтверждением.

## Протокол

1. **Verify before ask.** До вопроса проверь готовность: что именно будет опубликовано/установлено/отправлено, какой текущий статус, какие гейты прошли.
2. **Narrow options.** Дай 2–3 варианта, первый — рекомендованный. Каждый вариант содержит последствия и rollback.
3. **Typed confirm.** Для необратимого действия попроси явное подтверждение конкретной фразой, например `GREENLIGHT deploy production`.
4. **Execute only scope.** После подтверждения сделай только утверждённое действие, без «заодно».
5. **Receipt.** Запиши результат: команда, ссылка, SHA, время, что увидели после действия.

## Автоделегирование

Если фаундер заранее разрешил канал в `company/okr.md` или чартере, greenlight не нужен для каждого раза. Но первый раз канала всегда проходит через этот протокол.

## DoD

- [ ] Проверка готовности проведена до вопроса.
- [ ] Пользователь видел риск и rollback.
- [ ] Результат внешнего действия записан в issue/state/report.
