<!-- Blueprint: SaaS / программный продукт. Источник практики: паттерны PM-скиллов
     personal-corp-skills (pm-prd, pm-prioritize, pm-user-stories, pm-brainstorm, pm-feedback,
     pm-metrics) и Claude Task Master. Blueprint — стартовая гипотеза штатного интервью
     (Фаза 1 шаг 5): оркестратор кастомизирует под Intake, а не копирует вслепую. -->

# Blueprint: SaaS / программный продукт

**Кому подходит:** соло-фаундер или маленькая команда, которые строят программный продукт по подписке (B2C или B2B SaaS) — от идеи и MVP до платящих пользователей, с командой AI-агентов вместо найма людей.

## Функции бизнеса

дискавери фич → разработка (engineering) → релиз → привлечение (growth) → онбординг и поддержка (support) → удержание и монетизация → аналитика продукта (analytics)

## Оргпроект (профильные отделы к ядру board/engineering/qa)

| Отдел | Лейбл | Миссия | Агенты (модель) | Скиллы из реестра |
|-------|-------|--------|-----------------|-------------------|
| product | dept:product | дискавери фич, PRD, приоритизация бэклога | product-manager (Sonnet), user-researcher (Haiku) | pm-prd, pm-prioritize, pm-user-stories, pm-brainstorm, Claude Task Master |
| growth | dept:growth | лендинг, контент, каналы привлечения, позиционирование vs конкуренты | growth-marketer (Sonnet), copywriter (Sonnet) | deep-research, pm-competitive, design-minimal, parallel-design-variants |
| support | dept:support | приём и разбор обратной связи пользователей: тикеты, отзывы, FAQ | support-agent (Sonnet), triager (Haiku) | pm-feedback, task-routing |
| analytics | dept:analytics | метрики продукта (activation/retention/MRR), unit-экономика | analyst (Sonnet) | pm-metrics, cc-analytics |

Ownership: product — PRD и бэклог (company/product/); growth — лендинг, контент-календарь и каналы привлечения; support — очередь тикетов и FAQ; analytics — company/reports/ метрики и unit-экономика; код продукта — engineering.

Порядок найма: product и growth — сразу с MVP; analytics — как только появились первые пользователи (этап 1); support — как только тикеты и вопросы стали регулярными.

QA (ядро): регресс-прогон перед каждым релизом — необязателен до этапа 1, обязательный release-gate начиная с этапа 1 (первые пользователи).

## OKR-заготовки

| KR | Метрика | Как меряем |
|----|---------|-----------|
| Activation | % новых пользователей, дошедших до aha-момента | analytics: воронка онбординга |
| Retention | D7/D30 retention, % churn/мес | analytics: когортный анализ |
| Монетизация | MRR Δ, число платящих Δ, конверсия trial→paid | analytics/billing weekly |
| Скорость релизов | релизов/спринт, медиана «фича → прод» | engineering/product-лог |

Activation и retention меряем с этапа 1 (первые пользователи); MRR/платящие — с этапа 2; скорость релизов — сквозная метрика с MVP.

## Гейты этапов (роадмап)

0. MVP (core-сценарий работает end-to-end, N внутренних тестеров) → 1. Первые пользователи (публичный доступ, первые N sign-ups, воронка активации размечена) → 2. Платящие (billing подключён, первые N платящих, MRR > X) → 3. Масштабирование (каналы привлечения на потоке, retention стабилен, unit-экономика сходится).

Конкретные N и X по каждому гейту фиксируются в company/okr.md при Intake — здесь только форма роадмапа.

## Типовые первые задачи

- `type:feature` PRD для MVP: {core-фича} — проблема, ЦА, acceptance criteria (product)
- `type:feature` бэклог MVP по RICE: топ-10 фич на первый релиз (product)
- `type:feature` лендинг + форма waitlist/sign-up, первые каналы трафика {каналы} (growth)
- `type:feature` контент-план первых {N} недель под каналы привлечения (growth)
- `type:tooling` канал сбора фидбека (форма/тикеты) → еженедельный разбор pm-feedback (support)
- `type:chore` FAQ и база ответов на типовые вопросы (support)
- `type:chore` дашборд activation/retention/MRR в отчёт компании (analytics)
- `type:chore` расчёт unit-экономики: LTV/CAC на текущих данных (analytics)
- `type:chore` release-gate: чеклист регресса перед публикацией (qa)

## Промт-пак отдела (слот-формат; копируется в company/<отдел>/prompts.md при найме)

**Фича-дискавери из фидбека** *(product)*
```
разбери фидбек {feedback_source} за {period}: сгруппируй по темам, вытащи топ-3 боли по частоте и severity.
Для каждой боли — гипотеза фичи, кого затрагивает (персона/сегмент), оценка Impact (1-5).
Формат вывода: таблица боль → гипотеза → Impact → следующий шаг
```
> feedback_source: тикеты support + отзывы в сторе · period: 2 недели

**PRD-заготовка** *(product)*
```
напиши PRD для {feature} по шаблону pm-prd: фон и проблема, цель, пользователи, дизайн фичи,
acceptance criteria в Given-When-Then, метрика успеха. Тип продукта: {product_type}.
Пройдись по 10-пунктовому чеклисту качества pm-prd перед сдачей
```
> feature: онбординг-чеклист · product_type: B2C SaaS

**Приоритизация бэклога RICE** *(product)*
```
приоритизируй бэклог {backlog} методом RICE: Reach/Impact/Confidence/Effort по каждому пункту.
Верни таблицу с итоговым score и 2×2 Impact/Effort квадрант,
плюс предложение на спринт объёмом {sprint_capacity}
```
> backlog: company/product/backlog.md (12 пунктов) · sprint_capacity: 20 story points

**Разбор метрик недели** *(analytics)*
```
собери метрики продукта за {week}: activation %, retention D7/D30, MRR Δ, платящие Δ, точка отвала воронки.
Сверь с планом из company/okr.md — где факт расходится с планом.
Выведи: аномалии и вероятные причины, 1-3 рекомендации в план недели
```
> week: текущая неделя · источник: {analytics_source}

**Черновик анонса релиза** *(growth)*
```
подготовь анонс релиза {release} для {channel}: что нового, польза пользователю, CTA, длина под площадку.
Тон и стиль — по STYLE.md отдела, если есть, иначе нейтрально-дружелюбный.
Черновик для внутреннего ревью — наружу публиковать только с одобрения (review-gate)
```
> release: v0.3 онбординг · channel: Telegram-канал + email-рассылка

## Отчёты

Weekly (общий шаблон) + от analytics: блок «activation/retention/MRR» в каждый weekly; от support: сводка топ-жалоб недели; месячный business review (unit-экономика, LTV/CAC) — обязательный с этапа 2 (платящие).
