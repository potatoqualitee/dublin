#!/usr/bin/env bash
# PostToolUse hook for the Dublin deck.
#
# Fires after Edit/Write (see .claude/settings.json). Keeps the deck and its
# redux notes in lockstep: edit index.html and it nudges the agent to update
# SLIDES-REDUX.md to match, and the other way around. The reminder rides back
# into the model context via `additionalContext`; it is not shown to the user.
#
# Hook input arrives as JSON on stdin, e.g.
#   {"tool_name":"Edit","tool_input":{"file_path":"/path/index.html", ...}}

set -euo pipefail

payload=$(cat)

# Pull the edited file path out of the JSON payload.
file=$(printf '%s' "$payload" \
  | sed -n 's/.*"file_path"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' \
  | head -1)

# React only to the two files that must stay in sync; ignore everything else.
case "$file" in
  */index.html | index.html)
    cat <<'JSON'
{
  "hookSpecificOutput": {
    "hookEventName": "PostToolUse",
    "additionalContext": "You just edited index.html. If this change affects what SLIDES-REDUX.md describes (slides added, removed, reordered, or copy changed), update SLIDES-REDUX.md to match before treating the task as done. If the two are already in sync, leave it."
  }
}
JSON
    ;;
  */SLIDES-REDUX.md | SLIDES-REDUX.md)
    cat <<'JSON'
{
  "hookSpecificOutput": {
    "hookEventName": "PostToolUse",
    "additionalContext": "You just edited SLIDES-REDUX.md. If this change should be reflected in the deck, update index.html to match before treating the task as done. If the two are already in sync, leave it."
  }
}
JSON
    ;;
  *) exit 0 ;;
esac
