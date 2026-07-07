---
name: skill-craft
description: Используй при writing a skill, editing a skill, skill too long или pruning; tight-дисциплина для model-invoked office skills, которые остаются предсказуемыми, короткими и меняют поведение.
---

# Skill-craft

Предсказуемость — корневая добродетель: скилл даёт один и тот же процесс при каждом запуске, не один и тот же результат.

## Invocation

Model-invoked подходит скиллам, которые другие office-процессы должны находить сами; качество description окупает цену контекста.
User-invoked подходит редким ручным командам; `disable-model-invocation: true` экономит контекст, но делает человека индексом.
Router skill лечит ситуацию, когда множество user-invoked skills делает поиск сложнее исполнения.

## Description

Ставь leading word и самый сильный триггер в начало.
Держи один триггер на ветку; схлопывай синонимы, вызывающие одно поведение.
Используй pretrained leading words как якоря: `tight` заменяет "fast, deterministic, low-overhead"; `red` заменяет "trusted test cycle".
Повторяй anchor-токен там, где он должен направлять исполнение, вместо пересказа.

## Hierarchy

Инлайни только то, что нужно каждому запуску.
Выноси branch-specific детали за именованный reference pointer.
Держи лестницу: SKILL.md steps, SKILL.md reference, external reference pointer.
Опускай sediment ниже по лестнице, когда строка перестаёт менять поведение на большинстве запусков.

## Completion

Каждому действию нужен checkable completion criterion: done должно отличаться от not done.
Делай критерии exhaustive: "every X accounted for" сильнее, чем "make a list".
Сначала заостряй текущий критерий, затем открывай следующую работу, если агент завершает преждевременно.

## Pruning

Прогоняй no-op test по каждой строке: если default model behavior был бы тем же, режь или переписывай её.
Заменяй duplication одним более сильным trigger, rule или reference.
Заменяй sprawl на router, pointer или более узкий skill.
Формулируй желаемое поведение позитивно; guardrails используй только в паре с позитивным путём.
Предпочитай правила вместо образцов; оставляй образец только как самый короткий надёжный способ изменить поведение.

Адаптировано из mattpocock/skills — writing-great-skills (MIT).
