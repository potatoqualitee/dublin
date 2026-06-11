#!/usr/bin/env bash
# Stop hook for the Dublin deck.
#
# Fires when the agent finishes a turn (see .claude/settings.json). Prints a
# one-line status of the deck so you always know where things stand: how many
# slides exist, how much placeholder copy is still unwritten, and how many
# files have changed since the last commit.
#
# The summary goes to YOU via `systemMessage` (contrast the humanizer hook,
# which talks to the agent via `additionalContext`). Stop-hook stdin is ignored.

set -euo pipefail

root="${CLAUDE_PROJECT_DIR:-.}"
deck="$root/index.html"

[ -f "$deck" ] || exit 0

# One <section class="slide ..."> per slide.
slides=$(grep -c '<section class="slide' "$deck" || true)

# Content placeholders look like "[ write this ]" (a bracket, then a space).
# CSS/JS selectors like [data-active] have no leading space, so they're skipped.
todo=$(grep -oE '\[ [^]]*\]' "$deck" | wc -l | tr -d ' ')

# Working-tree changes since the last commit.
dirty=$(git -C "$root" status --porcelain 2>/dev/null | wc -l | tr -d ' ')

msg="Deck status: ${slides} slides, ${todo} copy placeholders left, ${dirty} files changed since last commit."

printf '{"systemMessage":"%s","suppressOutput":true}\n' "$msg"
