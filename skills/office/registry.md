# Реестр скиллов для найма

Проверенные скиллы/инструменты, из которых собираются отделы. При найме (Фаза 4) сначала смотри сюда, потом в «Как искать новые».

## Ядро (проверено локально)

| Название | Источник | Что делает | Отдел |
|----------|----------|-----------|-------|
| graphify | github.com/safishamsi/graphify (`uv tool install graphifyy`) | Knowledge-граф кодовой базы, `graphify query` вместо чтения файлов, хуки на коммиты | все (контекст) |
| code-review | встроенный Claude Code | Ревью диффа на баги/упрощения, уровни low→max | qa |
| verify | встроенный Claude Code | End-to-end проверка изменения перед коммитом | qa |
| deep-research | встроенный Claude Code | Мультиисточниковое исследование с проверкой фактов | research |
| codex plugin | marketplace `openai/codex-plugin-cc` (`/codex:rescue`) | Второе мнение / альтернативная реализация | engineering |
| personal-corp-skills: pm-* (prd, prioritize, user-stories, roadmap, metrics, brainstorm, competitive, feedback) | плагин personal-corp-skills | Полный PM-инструментарий | product |
| personal-corp-skills: gh-issues, manager, task-routing | плагин personal-corp-skills | Работа с GH issues, синк сессий, роутинг задач | board |
| personal-corp-skills: weekly-retro, weekly-planning, cc-analytics | плагин personal-corp-skills | Недельные ритуалы и аналитика | board |
| personal-corp-skills: readme-generator, claude-md-writer | плагин personal-corp-skills | Документация проекта | docs |
| personal-corp-skills: art-director, parallel-design-variants, design-minimal, html-draft | плагин personal-corp-skills | Поиск визуального стиля, варианты дизайна на выбор, минималистичные HTML-страницы, blueprint-схемы | design |
| personal-corp-skills: tg-bot-ops | плагин personal-corp-skills | Эксплуатация Telegram-ботов: health-чеки, вебхуки/поллинг, деплой, логи, инциденты | publishing/distribution, devops |
| personal-corp-skills: ceo-council | плагин personal-corp-skills | Мульти-перспективный разбор стратегических решений | board |

## Паттерны, адаптированные в office v1.0

| Паттерн | Источник вдохновения | Где используется |
|---|---|---|
| Маленькие composable skills и CSO-description | mattpocock/skills, obra/superpowers | `docs/BRICKS.md`, все новые кирпичи |
| Ready/blocked state machine и handoff-контекст | ccpm/issue-first workflows | `/memo`, `/fire-drill` |
| Verification before completion, evidence required | superpowers verification практики | `verifying`, `templates/spec-issue.md` |
| Systematic debugging: гипотезы до фиксов | diagnose/SRE-практики | `/fire-drill`, `diagnostician` |
| FACT/HYPOTHESIS/UNKNOWN | product-data-audit / ops reports | `/corporate`, `/planerka` |
| Unit-оценка найма и инструментов | personal-corp-skills project/manager практики | `/casting`, `/corporate` |

## Найденное на GitHub

Проверено фетчем README/marketplace.json и/или `gh api` 2026-07-02. Звёзды — снимок на эту дату.

| Название | Репо | ~Stars | Что делает | Отдел | Установка |
|---|---|---|---|---|---|
| Anthropic Document Skills | anthropics/skills | 157k | Официальные скиллы: docx/pdf/pptx/xlsx — чтение, генерация, формы, таблицы | docs | `/plugin marketplace add anthropics/skills` → `/plugin install document-skills@anthropic-agent-skills` |
| Anthropic Example Skills | anthropics/skills | 157k | mcp-builder, webapp-testing (e2e), web-artifacts-builder, skill-creator, canvas-design | engineering/qa | `/plugin install example-skills@anthropic-agent-skills` |
| Superpowers | obra/superpowers | 244k | Методология: строгий red/green TDD, systematic debugging, brainstorm→write-plan→execute-plan, git worktrees; рядом claude-session-driver — контроль других CC-сессий как воркеров (tmux) | engineering | `/plugin marketplace add obra/superpowers-marketplace` → `/plugin install superpowers@superpowers-marketplace` |
| Graphify | safishamsi/graphify | 76k | Knowledge-граф кода+SQL+доков+картинок, запросы на естественном языке | все (контекст) | `uv tool install graphifyy` → `graphify install` → `/graphify .`, `/graphify query "..."`, `/graphify explain "X"` |
| code-review + pr-review-toolkit | anthropics/claude-code | 135k | Ревью PR несколькими спец-агентами с confidence-scoring против false positives | qa | `/plugin marketplace add anthropics/claude-code` → `/plugin install code-review@claude-code-plugins` + `pr-review-toolkit@claude-code-plugins` |
| commit-commands + github | anthropics/claude-code | 135k | Git-workflow одной командой (commit/push/PR) + нативная GitHub MCP-интеграция | devops | `/plugin install commit-commands@claude-code-plugins`; `/plugin install github@claude-plugins-official` |
| agents (claude-code-workflows) | wshobson/agents | 37k | 88 плагинов / 194 агента / 158 скиллов из одного источника; отдельно git-pr-workflows, code-documentation | engineering/devops/docs | `/plugin marketplace add wshobson/agents` → `/plugin install git-pr-workflows@claude-code-workflows` |
| Claude Code Templates | davila7/claude-code-templates | 28k | CLI-конфигуратор + библиотека готовых agents/commands/hooks | engineering/devops | `npx claude-code-templates@latest --agent development-tools/code-reviewer --yes` |
| ruflo (экс Claude-Flow) | ruvnet/ruflo | 63k | Мета-харнесс мультиагентных «роёв»: координация, adaptive memory, RAG | devops/research | `/plugin marketplace add ruvnet/ruflo` → `/plugin install ruflo-core@ruflo` |
| Claude Task Master | eyaltoledano/claude-task-master | 28k | PRD → структурированные задачи с зависимостями/приоритетами (MCP-сервер) | product | `claude mcp add taskmaster-ai -- npx -y task-master-ai` |
| SuperClaude Framework | SuperClaude-Org/SuperClaude_Framework | 23k | 30 слэш-команд на весь цикл brainstorm→deploy, «когнитивные персоны» | engineering | `pipx install superclaude && superclaude install` |
| Claude Squad | smtg-ai/claude-squad | 8k | Параллельные AI-агенты (CC, Codex, OpenCode) в изолированных tmux/worktree-сессиях — буквальный «отдел агентов» | devops | `brew install claude-squad` или install.sh из репо |
| PM Skills Marketplace | phuryn/pm-skills | 22k | 68 PM-скиллов + 42 workflow-цепочки: discovery→strategy→execution→launch | product | `claude plugin marketplace add phuryn/pm-skills` → `claude plugin install pm-toolkit@pm-skills` |
| alirezarezvani/claude-skills | alirezarezvani/claude-skills | 20k | 337 скиллов по инженерным дисциплинам (unverified: состав) | engineering | `/plugin marketplace add alirezarezvani/claude-skills` |

## Как искать новые скиллы

1. **Прямой поиск GitHub**, в обход кураторов: код-поиск `path:**/SKILL.md <тема>` (https://github.com/search?q=path%3A**%2FSKILL.md&type=code) и топики https://github.com/topics/claude-code, https://github.com/topics/claude-skills.
2. **Авто-обновляемые реестры** (свежее awesome-списков): https://claude-skills.bdnhost.net/ (JSON API: /skills.json, ежедневный краул), https://www.claudepluginhub.com/ (21k+ скиллов, trust-сигналы); официальный каталог — команда `/plugin` → вкладка Discover или https://claude.com/plugins.
3. **Awesome-списки** (курируются людьми — лицензии, актуальность, due diligence): https://github.com/hesreallyhim/awesome-claude-code (+ машиночитаемый THE_RESOURCES_TABLE.csv, 226 записей), https://github.com/VoltAgent/awesome-agent-skills (1000+ скиллов от официальных команд), https://github.com/ComposioHQ/awesome-claude-skills.

Правило: скилл в реестр попадает только после проверки (страница репо открыта, install-команда реальна). Непроверенное помечать `(unverified)`.
