#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-codex}"
PROJECT_PATH="${2:-$(pwd)}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

case "$TARGET" in
  codex) DEST="$HOME/.codex/skills" ;;
  claude) DEST="$HOME/.claude/skills" ;;
  opencode) DEST="$HOME/.config/opencode/skills" ;;
  generic)
    cp "$ROOT/AGENTS.md" "$PROJECT_PATH/AGENTS.md"
    echo "Installed AGENTS.md into $PROJECT_PATH"
    exit 0
    ;;
  *)
    echo "Usage: ./install.sh [codex|claude|opencode|generic] [project_path]" >&2
    exit 2
    ;;
esac

mkdir -p "$DEST"
for skill in "$ROOT"/skills/*; do
  [ -d "$skill" ] || continue
  [ -f "$skill/SKILL.md" ] || continue
  name="$(basename "$skill")"
  mkdir -p "$DEST/$name"
  cp -R "$skill"/. "$DEST/$name/"
done

echo "Installed Office skills to $DEST"
