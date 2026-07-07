param(
  [string]$Root = (Split-Path -Parent $PSScriptRoot)
)

$ErrorActionPreference = "Stop"
$rootPath = (Resolve-Path $Root).Path
$skillDirs = Get-ChildItem -Path (Join-Path $rootPath "skills") -Directory |
  Where-Object { Test-Path (Join-Path $_.FullName "SKILL.md") }

function Ensure-Dir([string]$Path) {
  New-Item -ItemType Directory -Force -Path $Path | Out-Null
}

function Copy-Skill([System.IO.DirectoryInfo]$Skill, [string]$TargetRoot) {
  $dest = Join-Path $TargetRoot $Skill.Name
  Ensure-Dir $dest
  Copy-Item -Recurse -Force -Path (Join-Path $Skill.FullName "*") -Destination $dest
}

$claudeSkills = Join-Path $rootPath ".claude\skills"
$codexSkills = Join-Path $rootPath ".codex\skills"
$opencodeSkills = Join-Path $rootPath ".opencode\skills"
$geminiCommands = Join-Path $rootPath ".gemini\commands"

Ensure-Dir $claudeSkills
Ensure-Dir $codexSkills
Ensure-Dir $opencodeSkills
Ensure-Dir $geminiCommands

foreach ($skill in $skillDirs) {
  Copy-Skill $skill $claudeSkills
  Copy-Skill $skill $codexSkills
  Copy-Skill $skill $opencodeSkills

  $content = Get-Content -Raw (Join-Path $skill.FullName "SKILL.md")
  $description = ""
  if ($content -match "(?ms)^---\s*.*?description:\s*(.+?)\r?\n.*?---") {
    $description = $Matches[1].Trim().Replace('"', '\"')
  }
  $toml = @"
description = "$description"
prompt = "Use the Office skill at ../../skills/$($skill.Name)/SKILL.md. Load it before responding and follow its procedure."
"@
  Set-Content -NoNewline -Encoding UTF8 -Path (Join-Path $geminiCommands "$($skill.Name).toml") -Value $toml
}

$agents = @"
# Office Agent Rules

This repository uses Office.

- Canonical skills live in skills/<name>/SKILL.md.
- Work from self-contained specs.
- The maker is never the grader; verify with fresh context.
- Route by model class: frontier, everyday, cheap, huge-context.
- Ask before installs, spending, production, publishing, uploads, or outbound messages.
- Handoff shape: goal, status, files changed, commands run, decisions, risks, exact next step.
"@
Set-Content -NoNewline -Encoding UTF8 -Path (Join-Path $rootPath "AGENTS.md") -Value $agents

Write-Host "Synced $($skillDirs.Count) skills into Claude, Codex, OpenCode, Gemini, and AGENTS.md layouts."
