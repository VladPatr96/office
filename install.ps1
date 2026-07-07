param(
  [ValidateSet("codex", "claude", "opencode", "generic")]
  [string]$Target = "codex",
  [string]$ProjectPath = (Get-Location).Path
)

$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $MyInvocation.MyCommand.Path

switch ($Target) {
  "codex" { $Dest = Join-Path $HOME ".codex\skills" }
  "claude" { $Dest = Join-Path $HOME ".claude\skills" }
  "opencode" { $Dest = Join-Path $HOME ".config\opencode\skills" }
  "generic" {
    Copy-Item -Force -Path (Join-Path $Root "AGENTS.md") -Destination (Join-Path $ProjectPath "AGENTS.md")
    Write-Host "Installed AGENTS.md into $ProjectPath"
    exit 0
  }
}

New-Item -ItemType Directory -Force -Path $Dest | Out-Null
Get-ChildItem -Path (Join-Path $Root "skills") -Directory |
  Where-Object { Test-Path (Join-Path $_.FullName "SKILL.md") } |
  ForEach-Object {
    $targetDir = Join-Path $Dest $_.Name
    New-Item -ItemType Directory -Force -Path $targetDir | Out-Null
    Copy-Item -Recurse -Force -Path (Join-Path $_.FullName "*") -Destination $targetDir
  }

Write-Host "Installed Office skills to $Dest"
