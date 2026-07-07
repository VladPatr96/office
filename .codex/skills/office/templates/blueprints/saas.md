# SaaS Blueprint

## Departments

| Department | Owns | First metric |
|---|---|---|
| Product | problem, personas, roadmap | validated activation hypothesis |
| Engineering | app, API, data model, infra | verified deployment path |
| QA | test plan, acceptance, release gate | escaped defects |
| Growth | landing page, onboarding, messaging | signup-to-activation rate |
| Support | feedback loop, incidents | time to triage |

## Intake

- Target user and painful workflow.
- Activation event.
- Pricing or monetization assumption.
- Data sensitivity and compliance constraints.
- Deployment environment and rollback path.

## First Epics

1. Problem and activation spec.
2. Thin product slice with one happy path.
3. Instrumentation for activation and errors.
4. README install/demo path.

## Gates

- A new user can reach activation from README/demo.
- Verification covers happy path and one failure path.
- External launch requires explicit approval.
