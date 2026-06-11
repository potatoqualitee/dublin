#!/usr/bin/env bash
# PostToolUse hook for the Dublin deck.
#
# Fires after Edit/Write (see .claude/settings.json). When the file touched is
# the slide deck, it nudges the agent to run the humanizer skill on the copy it
# just changed. The reminder rides back into the model context via
# `additionalContext`; it is not shown to the user.
#
# Hook input arrives as JSON on stdin, e.g.
#   {"tool_name":"Edit","tool_input":{"file_path":"/path/index.html", ...}}

set -euo pipefail

payload=$(cat)

# Pull the edited file path out of the JSON payload.
file=$(printf '%s' "$payload" \
  | sed -n 's/.*"file_path"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' \
  | head -1)

# Only react to edits of the deck itself; ignore everything else.
case "$file" in
  */index.html | index.html) ;;
  *) exit 0 ;;
esac

cat <<'JSON'
{
  "hookSpecificOutput": {
    "hookEventName": "PostToolUse",
    "additionalContext": "You just edited the slide deck (index.html). Per CLAUDE.md, run the humanizer skill on any slide copy you added or changed before treating it as done: no em dashes, no promotional adjectives, terse, in Chrissy's voice."
  }
}
JSON
