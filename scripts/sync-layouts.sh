#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"

mkdir -p "$ROOT/.claude/skills" "$ROOT/.codex/skills" "$ROOT/.opencode/skills"

count=0
for skill in "$ROOT"/skills/*; do
  [ -d "$skill" ] || continue
  [ -f "$skill/SKILL.md" ] || continue
  name="$(basename "$skill")"
  mkdir -p "$ROOT/.claude/skills/$name" "$ROOT/.codex/skills/$name" "$ROOT/.opencode/skills/$name"
  cp -R "$skill"/. "$ROOT/.claude/skills/$name/"
  cp -R "$skill"/. "$ROOT/.codex/skills/$name/"
  cp -R "$skill"/. "$ROOT/.opencode/skills/$name/"
  count=$((count + 1))
done

cat > "$ROOT/AGENTS.md" <<'EOF'
# Office Agent Rules

This repository uses Office.

- Canonical skills live in skills/<name>/SKILL.md.
- Work from self-contained specs.
- The maker is never the grader; verify with fresh context.
- Route by model class: frontier, everyday, cheap, huge-context.
- Ask before installs, spending, production, publishing, uploads, or outbound messages.
- Handoff shape: goal, status, files changed, commands run, decisions, risks, exact next step.
EOF

echo "Synced $count skills into Claude, Codex, OpenCode, and AGENTS.md layouts."
