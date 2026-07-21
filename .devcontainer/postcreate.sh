#!/usr/bin/env bash
set -euo pipefail

if [ -d "$HOME/.claude" ]; then
  sudo chown -R "$(id -u):$(id -g)" "$HOME/.claude" 2>/dev/null || true
fi

echo "==> Tool versions"
R --version | head -n 1 || true
quarto --version || true
node --version || true
echo "==> Build complete."
