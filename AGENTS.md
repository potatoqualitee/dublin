# Dublin presentation

This repo is a single-file conference slide deck. Existing project guidance lives in `CLAUDE.md`, `PRODUCT.md`, and `DESIGN.md`; follow those when changing slide content or visual design.

## Command execution

On this Windows workspace, sandboxed `shell_command` calls consistently fail with:

```text
windows sandbox: spawn setup refresh
```

For this project, start file reads, searches, `git status`, and other normal inspection commands with `sandbox_permissions: "require_escalated"` and a short project-scoped justification instead of trying the sandboxed call first. Prefer the already approved command families where they fit, especially `rtk rg`, `rtk git`, and PowerShell read commands.

This is a project-local workaround for a repeat sandbox spawn issue, not permission to run destructive commands. Keep the usual approvals for deletes, resets, installs, network access, or anything with broader side effects.

## Slide work

When Chrissy says to update "the deck" or otherwise gives slide-editing directions, default to `index.html` regardless of which file is active in the IDE. If the request clearly applies to the short/lightning version too, update `lightning.html` as well. Keep the matching slide notes in sync: `SLIDES-REDUX.md` for `index.html` and `SLIDES-LIGHTNING.md` for `lightning.html`.

When editing audience-facing slide copy, follow `CLAUDE.md`: terse fragments, no em dashes, no `--`, no promo filler, and keep Chrissy's confident practitioner voice.

When editing layout or styling, follow `DESIGN.md`: warm cream paper, warm ink, one cayenne accent, Archivo plus Fragment Mono, and preserve the Swiss spec chrome.
