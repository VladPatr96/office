# Fable 5 Traceability

This matrix keeps legacy operating principles alive inside Office without binding the plugin to one domain or one model.

| Legacy principle | Office location | Gap handling |
|---|---|---|
| Simplicity wins | `skills/office/SKILL.md`, `writing-specs`, `next-step` | Specs must prefer the smallest working step |
| Give agents tools | `registry.md`, `design-stack`, install scripts | New tools require an offer and user approval |
| Small code, tests first | `writing-specs`, `reproduce`, `verifying` | Code tasks include a failing check before implementation when feasible |
| Living documentation | `done-check`, `lesson`, `planerka` | Docs are part of DoD when behavior or structure changes |
| Consent for installs/external actions | `office`, `design-stack`, `CLAUDE.md` | Any global install, spend, publish, or production deploy stops for approval |
| Founder time is budget one | `planerka`, `grill-me` | Non-blocking questions are batched, blocking ones are asked immediately |
| OKR layer | `office/templates/okr.md`, blueprints | Large work maps to measurable outcomes, not task volume |
| Outside only with approval | `office/templates/rituals.md`, `done-check` | Release and publishing gates are explicit |
| Unit economics and transparency | `premortem`, `design-stack`, registry offers | Hiring/tool offers include cost vs expected value |
| Fresh verifier | `verifying`, `loop`, `done-check` | Maker never grades own work |
| Lessons as living legacy | `lesson`, `unstuck`, `office/templates/lessons.md` | One confirmed mistake becomes one reusable lesson |

## Open Gaps

- Department-specific charters should be periodically compared against real project failures.
- The registry must mark unverified tools as candidates until install commands are checked.
- Cross-CLI layouts must be regenerated before each release.
