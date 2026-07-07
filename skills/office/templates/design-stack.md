# Design Stack Offer Contracts

Offer contracts for design tooling (Open Design + Google Stitch). Install nothing without explicit user approval — this template is the offer, not the installation.

## When This Triggers

The task is classified as **design**: UI screens, landing page, prototype, brand artifact, component visuals, or a design-system need. Offer these contracts BEFORE searching for new tools.

## Rule Of Thumb

Start with **Open Design** (zero cost, engine = CLI agents already hired). Reach for **Stitch** when you need an AI canvas, a portable `DESIGN.md`, or fast screen generation from prompts.

## Contract: Open Design

- **What:** Local-first design agent (open-design.ai, Apache-2.0, open source). It has NO model of its own — an already installed CLI agent (Claude Code, Codex, Cursor, Gemini CLI, OpenCode, Copilot CLI, Ollama, ...) is the engine; the model you point it at is the quality knob. Ships composable skills (markdown with frontmatter — same format as office) plus 100+ portable design systems (brand guides that rescue output from looking generic). Open alternative to the closed Claude Design.
- **Why now:** Systematic, brand-aware design work: component specs, on-brand UI, design-system-driven artifacts — using agents the office already employs.
- **Cost:** $0, no new subscriptions. Disk space only. BYOK, self-hosted; API keys never leave the machine.
- **Install + verify:** Desktop app for Windows/Mac from open-design.ai; from source: Node 24 + pnpm. Verify: launch the app and confirm it detects an installed CLI agent as its engine.
- **If declined:** Fall back to `design-minimal`, `html-draft`, `dataviz`, or plain repo-native HTML/CSS/SVG.

## Contract: Google Stitch (via stitch-mcp)

- **What:** Google Stitch (Google Labs): text/voice → UI design + production code. Stitch 2.0 adds an AI canvas, vibe design, the `DESIGN.md` format (portable design-system description), and design-token import. Accessed from agents through the unofficial MCP proxy `davideast/stitch-mcp` (Apache-2.0). MCP tools: `build_site` (screens → routes), `get_screen_code` (screen HTML), `get_screen_image` (base64 screenshot). Clients: Claude Code, Cursor, Gemini CLI, Codex, OpenCode, VS Code.
- **Why now:** Fast UI drafts from a prompt, screen code generation at speed, or when the project needs a canvas / `DESIGN.md`.
- **Cost:** Free tier via Google Labs: ~350 standard + 200 experimental generations/month. PRICE TRAP: requires a Google Cloud project with the Stitch API enabled, an Owner/Editor role, and billing ENABLED on the GCP project — count this as part of the cost.
- **Install + verify:**

  ```
  npx @_davideast/stitch-mcp init
  ```

  (wizard: gcloud, OAuth, project), then add to the MCP client config:

  ```json
  {"mcpServers":{"stitch":{"command":"npx","args":["@_davideast/stitch-mcp","proxy"]}}}
  ```

  Verify: the MCP client lists the `stitch` server and its three tools.
- **If declined:** Fall back to `design-minimal`, `html-draft`, `dataviz`, or plain repo-native HTML/CSS/SVG.

## Usage Guide

### Stitch cycle

1. Prompt Stitch with the screen/flow description → it generates screens.
2. Pull code per screen via `get_screen_code` (preview via `get_screen_image`); commit into the repo.
3. Export `DESIGN.md` and store it at `company/design/DESIGN.md` — the single source of the project design system, read by Open Design and by agents.

### Open Design cycle

1. Pick a design system (one of the 100+ portable ones, or the project's own from `company/design/DESIGN.md`).
2. Hand the design task to the engine agent (an already-hired CLI agent) through Open Design.
3. Collect the artifact (component spec, UI, brand asset) into the repo.

## Fallback

If both offers are declined: `design-minimal`, `html-draft`, `dataviz`, or plain HTML/CSS/SVG — no external tools, safe default.
