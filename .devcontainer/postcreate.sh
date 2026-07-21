#!/usr/bin/env bash
set -euo pipefail

if [ -d "$HOME/.claude" ]; then
  sudo chown -R "$(id -u):$(id -g)" "$HOME/.claude" 2>/dev/null || true
fi

# --- CLI agents (the extensions cover the "just sign in" flow) -------
# Codex ships its terminal agent separately; install so `codex` works in
# the terminal too. Claude Code's CLI comes bundled with its extension.
if command -v npm >/dev/null 2>&1; then
  npm install -g @openai/codex >/dev/null 2>&1 || echo "Codex CLI install skipped"
fi

# --- Git / GitHub setup for pushing ---------------------------------
git config user.name  >/dev/null 2>&1 || git config --global user.name  "${GITHUB_USER:-student}"
git config user.email >/dev/null 2>&1 || git config --global user.email "${GITHUB_USER:-student}@users.noreply.github.com"

if command -v gh >/dev/null 2>&1; then
  PARENT=$(gh repo view --json parent -q '.parent.nameWithOwner' 2>/dev/null || true)
  if [ -n "${PARENT:-}" ] && ! git remote | grep -qx upstream; then
    git remote add upstream "https://github.com/${PARENT}.git" && echo "Added upstream -> ${PARENT}"
  fi
fi

echo "==> Tool versions"
R --version | head -n 1 || true
quarto --version || true
node --version || true
codex --version 2>/dev/null || true
echo "==> Build complete."
