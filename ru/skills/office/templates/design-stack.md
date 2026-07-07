# Контракты-офферы дизайн-стека

Офферы на дизайн-инструменты (Open Design + Google Stitch). Ничего не устанавливать без явного одобрения пользователя — этот шаблон является оффером, а не установкой.

## Когда срабатывает

Задача классифицирована как **дизайн**: UI-экраны, лендинг, прототип, бренд-артефакт, визуал компонентов или потребность в дизайн-системе. Предложить эти контракты ДО поиска новых инструментов.

## Правило

Начинать с **Open Design** (нулевая цена, движок — уже нанятые CLI-агенты). Брать **Stitch**, когда нужен AI-канвас, переносимый `DESIGN.md` или скорость генерации экранов из промптов.

## Контракт: Open Design

- **Что:** Local-first дизайн-агент (open-design.ai, Apache-2.0, open source). БЕЗ собственной модели — движком служит уже установленный CLI-агент (Claude Code, Codex, Cursor, Gemini CLI, OpenCode, Copilot CLI, Ollama, ...); модель, на которую он указывает, — регулятор качества. Внутри: composable skills (markdown с frontmatter — тот же формат, что у office) + 100+ portable design systems (бренд-гайды, спасающие от generic-вывода). Открытая альтернатива закрытому Claude Design.
- **Зачем сейчас:** Системная дизайн-работа под брендом: спеки компонентов, UI в фирменном стиле, артефакты по дизайн-системе — силами уже нанятых агентов.
- **Стоимость:** $0, без новых подписок. Только место на диске. BYOK, self-hosted; ключи наружу не уходят.
- **Установка + проверка:** Desktop-приложение Windows/Mac с open-design.ai; из исходников — Node 24 + pnpm. Проверка: запустить приложение и убедиться, что оно видит установленный CLI-агент как движок.
- **При отказе:** Fallback: `design-minimal`, `html-draft`, `dataviz` или голый HTML/CSS/SVG в репозитории.

## Контракт: Google Stitch (через stitch-mcp)

- **Что:** Google Stitch (Google Labs): text/voice → UI-дизайн + production-код. Stitch 2.0 — AI-канвас, vibe design, формат `DESIGN.md` (переносимое описание дизайн-системы), импорт design tokens. Доступ из агентов через неофициальный MCP-прокси `davideast/stitch-mcp` (Apache-2.0). Инструменты MCP: `build_site` (экраны → маршруты), `get_screen_code` (HTML экрана), `get_screen_image` (скриншот base64). Клиенты: Claude Code, Cursor, Gemini CLI, Codex, OpenCode, VS Code.
- **Зачем сейчас:** Быстрый черновик UI из промпта, генерация кода экранов, канвас / `DESIGN.md`.
- **Стоимость:** Бесплатно через Google Labs: ~350 standard + 200 experimental генераций/мес. ЦЕНА-ЛОВУШКА: нужен Google Cloud проект со Stitch API, ролью Owner/Editor и ВКЛЮЧЁННЫМ billing — это входит в стоимость оффера.
- **Установка + проверка:**

  ```
  npx @_davideast/stitch-mcp init
  ```

  (мастер: gcloud, OAuth, проект), затем в конфиг MCP-клиента:

  ```json
  {"mcpServers":{"stitch":{"command":"npx","args":["@_davideast/stitch-mcp","proxy"]}}}
  ```

  Проверка: MCP-клиент показывает сервер `stitch` и его три инструмента.
- **При отказе:** Fallback: `design-minimal`, `html-draft`, `dataviz` или голый HTML/CSS/SVG в репозитории.

## Гайд использования

### Цикл Stitch

1. Промпт в Stitch с описанием экрана/флоу → генерация экранов.
2. Код по экранам через `get_screen_code` (превью — `get_screen_image`); коммит в репозиторий.
3. Экспортировать `DESIGN.md` и положить в `company/design/DESIGN.md` — единый источник дизайн-системы проекта, его же читает Open Design и агенты.

### Цикл Open Design

1. Выбрать design system (одну из 100+ переносимых или проектную из `company/design/DESIGN.md`).
2. Отдать дизайн-задачу агенту-движку (уже нанятому CLI-агенту) через Open Design.
3. Забрать артефакт (спека компонента, UI, бренд-ассет) в репозиторий.

## Fallback

Если оба оффера отклонены: `design-minimal`, `html-draft`, `dataviz` или голый HTML/CSS/SVG — без внешних инструментов, безопасный дефолт.
