# SISMID 2026 - Human-AI Teaming for ID Modeling

A ready-to-go coding environment for the course. Everything for the
modeling work is preinstalled. You only need to sign in to your AI.

## Start (students)
1. Green **Code** button > **Codespaces > Create codespace on main**.
2. Wait for the container to build (first build takes a few minutes).
3. Open any file, click the Claude icon (top-right or the sidebar),
   and **Sign in** with your Claude account.

That is it. The Claude panel and all R tooling are already installed.

> You need a paid Claude plan (Pro or Max) to sign in. There is no free
> Claude Code tier. If you would rather use API billing, set an
> `ANTHROPIC_API_KEY` Codespaces secret on the repo instead of signing in.

## What is preinstalled
- R with tidyverse, mgcv (GAMs), forecast + fable/feasts (ARIMA),
  scoringutils v2, and hubverse tooling
- Quarto (for evaluation dashboards) and RStudio Server on port 8787
- Claude Code panel, plus the R, Quarto, and Claude Code VS Code extensions

## Maintainer notes
- Edit the R package list in one place: `.devcontainer/install.R`,
  then rebuild the container.
- Base image is `ghcr.io/rocker-org/devcontainer/tidyverse:4`, which
  is amd64. GitHub Codespaces is amd64, so students are fine; on Apple
  Silicon it runs under emulation.
- Turn on Prebuilds (Settings > Codespaces) so students skip the R build.
