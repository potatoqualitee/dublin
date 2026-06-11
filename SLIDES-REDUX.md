# Slides redux

Notes for the rebuilt deck. This supersedes `SLIDES.md`, which described the
older, wordier version that did not land. The live deck is `index.html`.

## What changed

Started from the old PowerPoint format in `references/*.pptx`: one short title,
one line, a big screenshot, the link parked in the corner. Far less text per
slide. Kept the Swiss spec structure from `DESIGN.md` (Archivo + Fragment Mono,
spec chrome), then rethemed it for Data Céilí: logo in the frame, green/sage
rules, yellow pills, and a soft olive-to-peach footer wash.

That 10-slide screenshot cut has since grown into a 32-slide arc. The product
tour (§01) and the shipped work (§03) stayed, but the deck now opens with a
browser-vs-machine explainer (§01 versus layout), adds a maintenance-work
section (§04) about using an AI CLI to clean up old blog posts, then an
honest-part section (§05) about the costs of moving fast and the guardrails
Chrissy put back. The beyond-code section (§06) shows the same harness pointed
at business papers, and §07 closes on three slides that end with a hand-drawn
rainbow.

New layouts joined the rebuilt `.s-showcase`: `.s-bio`, `.s-versus`, `.s-list`
(scanner chips and the hooks grid), `.s-hook-intro`, `.s-skills`, `.s-close`,
`.s-rainbow`. Screenshots are now either clickable (open the real site in a new
tab) or zoomable (open a full-size lightbox).

All on-screen copy follows the humanizer rules in `CLAUDE.md`.

## Data Céilí retheme

The live deck now uses `logo.png` as a resized transparent event mark in the
persistent frame. The palette is pulled from the Data Céilí homepage screenshot:
bright céilí green, darker sage linework, yellow call-to-action pills, and the
site's soft olive-to-peach band translated into a low-opacity footer wash. The
title slide also includes a quiet Celtic-knot line mark.

## Running order (32 slides)

| # | Section | Layout | On screen | Asset / link |
|---|---------|--------|-----------|--------------|
| 1 | §00 cold open | title | "CLAUDE CODE" + "will change your life" + "Data Céilí 2026 / Trinity College Dublin / 12 June" + "I haven't written a line of code in months." | Chrissy LeMaire / Dublin 2026 |
| 2 | §00 who's talking | bio | "Chrissy LeMaire" + Microsoft MVP · GitHub Star · Manning author · creator of dbatools · full-time enterprise vibe coder. "I build tools to make myself more productive and it's so addictive." | none |
| 3 | §01 meet claude code | versus | "Know the difference / One lives in a tab. One lives on your machine." Browser agents live in claude.ai, chatgpt.com, or gemini.google, read and write text, and cannot open files or run commands. Local agents include Claude Code, Codex, and Gemini CLI, live on your machine, read files, run commands, and usually work inside a sandbox. Not always. | none |
| 4 | §01 meet claude code | showcase | "Machine access / It mapped my whole network" + "I handed Claude my machine and said, map it. It found the VMs, SQL instances, subnets, and SSH tunnel, then made the diagram I needed." | shot-lab.png · link: blog.netnerds.net/lab |
| 5 | §01 meet claude code | showcase | "Command line / Where I spend my day" + "Opus 4.8, a million tokens of context, the whole repo in its head. I just talk to it." | shot-cc-cli.png · corner: mac · windows · linux |
| 6 | §01 meet claude code | showcase | "Desktop app / No terminal required" + "(Mostly) the same agent, friendlier interface." | shot-cc-desktop.png · corner: mac · windows |
| 7 | §01 meet claude code | showcase | "VS Code / This deck was built here" + "Right next to the code. The slides you're watching were written in that panel." | shot-cc-vscode.png · corner: editor extension |
| 8 | §02 the others | showcase | "Got ChatGPT by OpenAI? / You've got Codex" + "Same idea, different company and model. Here it's chasing Dependabot failures across dbatools and pinning every action to a SHA." | shot-codex.png · corner: openai codex |
| 9 | §02 the others | showcase | "GitHub Copilot / I don't use GitHub Copilot anymore" + "GitHub put Copilot on usage-based billing. A typical estimate looks like this. Mine still ran past 300 a month, more than I'll pay. Codex is the best value right now, but that changes month to month." | github-billing.webp · corner: usage-based billing |
| 10 | §03 what i shipped | statement | "The real shift / Claude Code made impossible amounts of work possible." + "Not because I lacked skill. Because some jobs are just too big for one person: migrations, cleanup, translations, and all the tiny steps between idea and done." | none |
| 11 | §03 what i shipped | showcase | "Rebuilt / dbatools.io, in a day" + "Gave Claude the old HTML. Got back dark mode and a getting-started guide that actually helps." | shot-dbatools.png · link: dbatools.io |
| 12 | §03 what i shipped | showcase | "Off WordPress / realcajunrecipes.com" + "Twenty years of recipes, off WordPress, now static and unhackable. Then the part I wanted for years: French French at scale." | shot-realcajunrecipes.png · link: realcajunrecipes.com |
| 13 | §03 what i shipped | showcase | "Where to live / I BUILT A MAPS APP!" + "Every grocery, vet, tram, and rent in The Hague, scored. Double-click into street view." | hague.webp · link: haguehouse.pages.dev |
| 14 | §04 maintenance work | showcase | "Blog maintenance / 100+ posts, one prompt" + "Not content generation. Maintenance. Links, screenshots, commands, Twitter embeds. The work that always loses to everything else." | ai-cli-blog.png · link: github.com/dataplat/web/blob/html/prompts/blog-refresh.md |
| 15 | §04 maintenance work | showcase | "Link rot / AI fixed Microsoft's link rot" + "Microsoft docs moved. Again. It tested the links, found current pages, and turned old blue PowerShell screenshots into searchable text." | ai-fixes-microsoft-link-rot.png · corner: 2016-2025 |
| 16 | §04 maintenance work | showcase | "Judgment calls / It followed the people, too" + "Old Twitter embeds vanished. Friends moved blogs. It went looking, found the new homes, and left the history that was still true." | ai-updates-moved-blog-links.png · corner: not find-and-replace |
| 17 | §05 the honest part | hook intro | "Why Claude Code feels different" + "Control surfaces for agents" + "Policy. Context. Receipts." with cards for Hooks, Skills, and Commands. Hooks block bad moves before they land in the repo. Skills use progressive disclosure to load the right rules only when needed. Commands turn repeated checklists into slash-command routines such as /ralph and /session-analysis. | none |
| 18 | §05 the honest part | list | "Hooks / Hooks make the repo push back" + "Pre-write hooks catch bad edits. Stop hooks catch bad endings. Command hooks quietly improve the shell." + 10 hook examples for a data/dev-tooling room (read-before-edit, SQL injection, auth sentinel, token trampoline, tests for files, stop gate, rtk rewriter, line endings, localhost fetch, file size cop). file size cop is the marquee: "About to write a 900-line monster? It warns first." | none |
| 19 | §05 the honest part | skills | "Skills teach taste and tools" + "Your rules, your voice, and how to use the thing without guessing." Impeccable, Humanizer, and dbatools cards. Impeccable teaches design taste, Humanizer teaches writing voice, dbatools teaches safe SQL Server command usage with WhatIf first. | github.com/pbakaus/impeccable · github.com/blader/humanizer · dbatools.io |
| 20 | §05 the honest part | list | "Commands / Commands package the playbook" + "A slash command captures the sequence: plan one item, run checks, review bugs, report evidence." Chips: /ralph, /session-analysis, verify, test, bug review, handoff. "Same phases every time. Same checks. Same receipt." | none |
| 21 | §05 the honest part | list | "Yay enterprise / That's what makes it enterprise" + "Hooks, skills, and commands are why the agent can run forward without making the repo a trust fall." Chips: policy, repeatability, receipts, review. "It can move faster because the system around it has memory, taste, and consequences." | none |
| 22 | §05 the honest part | showcase | "But / Microsoft found the bill" + "David Fowler's team got faster with AI. Then the work moved into review, maintenance, and ownership." | shot-fowler.png · corner: david fowler · microsoft |
| 23 | §05 the honest part | list | "The old guard / Bring the old guards back" + "Scanners on the outside. Hooks on the inside. A human at the merge." Classic scanner chips, agent-specific tripwires, and "The agent proposes. A person reads it and approves. Nothing ships on the agent's word alone." | none |
| 24 | §06 beyond code | statement | "I write papers the way I write software." + "Same harness, no code. A repo per client, with skills, hooks, and memory. Source in, a finished brief out." | none |
| 25 | §06 beyond code | showcase | "The setup / A repo for every client" + "One folder per engagement. A CLAUDE.md, a reference shelf, source in, a finished Word doc out. Diffed and reviewed like code." | shot-bizdev.png (optional, graceful placeholder) · corner: markdown in · .docx out |
| 26 | §06 beyond code | statement | "I bring the content. It brings the grammar." + "No slop. The ideas and the facts are mine. It words them better, like an editor, not a ghostwriter." | none |
| 27 | §06 beyond code | list | "Memory / Captured once. Spoken on every draft." + chips (British English, capitalise the Programme, platform costs only, cite Marlowe's Rule, active voice no filler) + "The reviewer's house style lives in memory; the next draft already speaks their dialect." | none |
| 28 | §06 beyond code | list | "Guardrails, again / The hooks know it's not code" + 10 prose hooks (en-GB, house-style, in-repo-only, kebab-case, scripts-dir, two-plans, reference-shelf, mirror-memory, tidiness-check, source-check). source-check is the marquee: every claim points back to a reference. | none |
| 29 | §06 beyond code | statement | "Swap the work. The system holds." + "Skills, hooks, memory, all text on disk. It ran my code. Now it runs the rest of my job." | none |
| 30 | §07 closing | statement | "Where this leaves us / There's a lot of doom. I'm all in anyway." + "I'm doing this full time now, building a company on exactly what you just saw. We still need software engineers, just with different skills. Every prompt, I use what I learned building dbatools and running systems. Same skills, accelerated." | none |
| 31 | §07 closing | showcase | "Not just me / So are other old guards." + "Linus Torvalds. Daniel Stenberg, creator of curl. The people who built the pipes are paying attention." Uses `positive.jpg` chart with a LinkedIn source link. | positive.jpg |
| 32 | §07 closing | rainbow | Hand-drawn rainbow (arcs draw left to right) + "I get to build anything I want now." | none |

## Assets

All in `references/`, referenced by relative path so they ship with the deck on
GitHub / Cloudflare Pages.

| File | Slide | Source |
|------|-------|--------|
| shot-lab.png | 4 | dropped by Chrissy |
| shot-cc-cli.png | 5 | dropped by Chrissy |
| shot-cc-desktop.png | 6 | dropped by Chrissy |
| shot-cc-vscode.png | 7 | dropped by Chrissy |
| shot-codex.png | 8 | dropped by Chrissy |
| github-billing.webp | 9 | Copilot usage-based billing estimate showing $39.00 vs $1,063.52 |
| shot-dbatools.png | 11 | headless capture of dbatools.io |
| shot-realcajunrecipes.png | 12 | headless capture of realcajunrecipes.com |
| hague.webp | 13 | existing reference |
| ai-cli-blog.png | 14 | copied from `C:\github\blog\static\images` |
| ai-fixes-microsoft-link-rot.png | 15 | copied from `C:\github\blog\static\images` |
| ai-updates-moved-blog-links.png | 16 | copied from `C:\github\blog\static\images` |
| shot-fowler.png | 22 | screenshot of David Fowler's article |
| shot-bizdev.png | 25 | optional; bizdev workspace tree or a rendered brief (graceful placeholder if absent) |
| positive.jpg | 31 | LinkedIn post: https://www.linkedin.com/feed/update/urn:li:activity:7468010497573978112/ |

The lab figure (slide 4) keeps a graceful fallback: if `shot-lab.png` is missing
it shows a dashed placeholder; on successful load the placeholder clears itself.

## Image interactions

Two kinds. Navigate with the arrow keys / space, or click an empty area of the
slide. The viewport click handler ignores `<a>` and zoomable figures, so
clicking an image never advances the slide.

**Clickable** screenshots open the real site in a **new tab** (hover shows an
"open ↗" chip):

| Slide | Image opens |
|-------|-------------|
| 4 | blog.netnerds.net/lab |
| 5 | claude.com/claude-code |
| 11 | dbatools.io |
| 12 | realcajunrecipes.com |
| 13 | haguehouse.pages.dev |
| 14 | github.com/dataplat/web/blob/html/prompts/blog-refresh.md |

**Zoomable** screenshots (the uncropped `shot-full` shots) open a full-size
lightbox on click (hover shows a "zoom ⤢" chip; esc or click closes; a nav key
closes the zoom and advances in one press). The lightbox intentionally upscales
the clicked image to 175% so small diff screenshots are easier to read: slides
6, 8, 15, 16, 22, 31. Slide 7 opens zoomable but fits the viewport.

Slide 9 (`github-billing.webp`) is a plain `shot-full` image: no link, no zoom.

Product URLs (Claude Code) and the Hague host are best guesses, not confirmed
(DNS was flaky). Easy to swap in `index.html`.

## Decisions

- Kept the Swiss cream look, restructured to screenshot-forward (Chrissy's call),
  then grew it into a full arc with a maintenance-work section, an honest-part
  section, and a closing pair.
- Corner shows a real URL for shipped artifacts (and the lab), a muted descriptor
  for the product surfaces (CLI/desktop/editor), Codex, Copilot, and Fowler.
- Screenshots are either links (open in a new tab) or zoomable (lightbox);
  navigation stays on the keyboard and empty-area clicks.
- Section numbering: §00 intro, §01 meet Claude Code, §02 the others (Codex,
  Copilot), §03 what I shipped, §04 maintenance work, §05 the honest part,
  §06 beyond code (writing business papers like software), §07 closing.
- §04 maintenance work distills the local blog post
  `C:\github\blog\content\post\update-your-blog.md`: batch maintenance for 100+
  old posts, proof via the Microsoft link-rot screenshot, and the less mechanical
  moved-people-links screenshot.
- §06 beyond code points the same harness (skills, hooks, memory, a repo per
  client) at business-development papers, not code. It reuses existing layouts
  (s-close, s-list, s-showcase), so no new CSS, and pays off the old closing's
  dangling "more on that later" (that line is now repointed to "building a
  company on exactly what you just saw").
- Reworked §05 so the differentiator lands before the cautionary tale: hooks,
  skills, commands, then the enterprise claim those three make possible. Fowler
  becomes the "but" turn, and the old guard lands as the mitigation.
- The slide 28 marquee hook is now `source-check`: every claim points back to a
  reference, which keeps the bizdev example focused on reviewable prose instead
  of document ownership.
- Overwrote the old `index.html` (recoverable in git). `slide-template.html` is
  untouched.

## Pending

- Confirm the live Hague URL. `haguehouse.pages.dev` is wired in but a probe
  returned a 40x, so it may be access-protected or a different host.
- Reconcile the Copilot billing story: slide 9 copy says "past 300 a month,"
  while the screenshot and image alt show $1,063.52. Pick the number Chrissy
  wants to say out loud.
- Slide 25 (`shot-bizdev.png`) is optional: it shows a dashed placeholder until
  Chrissy drops in a workspace-tree or rendered-brief screenshot.
