# SISMID 2026 - Course Coding Environment

A backup coding environment for the course, for when your local setup
isn't cooperating. Everything is preinstalled. Open it in the cloud
and go.

## Open it
1. Green **Code** button > **Codespaces** > **Create codespace on main**.
2. Wait a few minutes for the first build.
3. Pick one AI assistant from the sidebar and sign in:
   - **Claude Code**: a Claude Pro/Max account (or ANTHROPIC_API_KEY secret)
   - **GitHub Copilot**: your GitHub account (Copilot Pro is free for
     verified students via GitHub Education)
   - **OpenAI Codex**: a ChatGPT account (or OPENAI_API_KEY secret)

Then open an R file and work.

## What's preinstalled
- R with tidyverse, mgcv (GAMs), forecast + fable/feasts (ARIMA),
  scoringutils v2, and hubverse tooling
- Quarto and RStudio Server (port 8787)
- Claude Code, GitHub Copilot, and OpenAI Codex

## Keeping your work
This is a scratch space. Your Codespace keeps its files between sessions
until you delete it. To save work elsewhere, download files
(right-click > Download) or commit to your own copy of the repo.

## Maintainer note
Keep the repo public so students can open it on their own free Codespaces
hours. Change what's installed by editing `.devcontainer/install.R` and
rebuilding.
