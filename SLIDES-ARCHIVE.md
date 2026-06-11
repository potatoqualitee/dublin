# Claude Code Will Change Your Life For The Better

**Speaker:** Chrissy LeMaire
**Event:** Data Céilí 2026 · Trinity College Dublin · room JM Synge
**When:** Fri 12 Jun 2026, 10:05 to 11:05 (UTC+1) · 60 min, demo-heavy
**Deck:** single self-contained `index.html`, keyboard-driven, 16:9

> **How to read this file.** One `###` per slide, in presentation order (top to bottom). The `### ID` (like `11b`, `14c`) is a stable handle, not a running count, so the deck can reorder without renumbering every slide; the IDs still map 1:1 to the `index.html` section comments. **On screen** is the exact copy (terse, no em dashes). _Notes_ is what Chrissy says or does live, not projected. `[archetype]` maps to the slide types in `DESIGN.md` (title / section / statement / content / showcase / compare / closing).
>
> 54 slides. **Posture pass (May 2026):** the spine and beats are unchanged from the prior revision, but the copy is rebalanced. The joy stays loud (it is the draw), and every "look what I built" now also says "and here is your first step." The biggest single edits: a new beat near the open that names where the room is and what scares them (2c), paid off later at "let it rip"; the hooks stat reframed so the takeaway is "I wrote zero of them, you'd start with one" instead of an awe number; and the skills/hooks build bent toward the audience's own world (module, runbook, linter, git hook) so enterprise-grade reads as reachable, not as a wall. On-screen copy is humanizer-clean; a final whole-deck pass runs once scope locks.

---

## §00 · cold open

### 1 · Title `[title]`
**On screen**
- Kicker: Claude Code
- Title: **Will Change Your Life For The Better**
- Lede: Real work, the handful of moves behind it, and a stupid amount of fun.
- By-line: Chrissy LeMaire · Data Céilí 2026 · Trinity College Dublin

_Notes:_ Open cold. "I'm going to show you real work I shipped this spring, the moves behind it, and what it costs now that the free ride is ending. None of it is hard. By the end you'll have the handful of moves that actually matter, and probably the itch to go build something tonight." (No "this isn't hype" disclaimer anymore. Don't defend it, just be it.)

---

## §01 · the turn

### 2 · Work is fun again `[statement]`
**On screen**
- Kicker: §01 · the turn
- Statement: Work is *fun* again.

_Notes:_ Decades in the data world. Last year the job felt mechanical. This spring I shipped more than I have in years and actually enjoyed it. Quick who-I-am: dbatools, PowerShell, SQL Server. Then the turn to the room: "and if last year felt mechanical to you too, you're exactly who I'm here for." Name them early.

### 2b · It runs on my computer `[content]`
**On screen**
- Kicker: what's different
- Head: It runs on my computer.
- Body: When most people say they use AI, they mean a chatbot in a browser. Paste the docs in, copy the answer out. This one lives on your machine. It reads your files, runs your commands, saves the work.
- Pull line: I talk. It types.

_Notes:_ The reframe before the receipts. When I ask people their AI workflow, they describe pasting documents into a chatbot and copying answers back. That's not what I'm showing today. This is agentic: your files, your shell, your machine. The difference is the whole talk. (Switched the body to "your" on purpose. The point is what it does for them, not a description of my setup.)

### 2c · You're probably where I was `[content]`
**On screen**
- Kicker: who this is for
- Head: You've tried the chatbot. You're not convinced it's worth rewiring your week. And you've got real questions about letting it near anything that matters.
- Body: That was me a year ago. Today it runs my real work on real systems, and I trust it to. The questions are the right ones. I'll show you exactly how I answer them.
- Pull line: Fair questions. Good answers.

_Notes:_ The three things keeping the room on the sidelines, framed as the reasonable position it is: tried the chatbot and weren't sold, not yet convinced it's worth changing how they work, and asking hard questions about handing it production access. Say all three out loud so they feel seen and respected, not diagnosed. These are people weighing it, not people afraid of it. Plant the access question here and pay it off at §06 ("let it rip, responsibly"). This is the slide that makes the questioners lean in.

---

## §02 · what i shipped

### 3 · Section divider `[section]`
**On screen**
- §02
- Head: What I shipped
- Lede: A few weeks. Real projects, in production.

_Notes:_ No toy demos. Everything here I can open in a browser right now. Frame it as a menu, not a trophy case: "every one of these started as a problem you probably have too. Pick the one that sounds like your week."

### 4 · The montage `[content grid]`
**On screen** (six cells)
1. **dbatools.io**, rebuilt in a day
2. **realcajunrecipes.com**, now in French
3. **100+ blog posts**, fixed in a batch
4. **dbatools T-SQL**, safe on case-sensitive servers
5. **PDFs to SQL Server**, one prompt
6. **LeLab**, my network mapped

_Notes:_ The receipts, framed as afternoons not heroics. For post #3, the batch fixed dead links, turned old screenshots into text, and modernized deprecated code. I'll run the PDFs one live in a minute. None of these took special skill. They took the moves in this talk. Cell 5 is a promise the room will watch me keep in §03.

---

## §02 · house hunting (the in-depth example)

### 4a · The hard part `[statement]`
**On screen**
- Kicker: house hunting
- Statement: The hard part wasn't the house. It was the *neighborhood*.
- Sub: We were moving to The Hague. One car, a wife who needs a vet she can walk to.

_Notes:_ Zoom in on one win from the montage. New city: you can find a house in a day, but is the area any good? One car, so a vet, groceries, and a bus stop all have to be walkable. Safe. Restaurants. This is the messy real-life kind of problem with no clean dataset, the kind you'd never bother writing code for. That's the point.

### 4b · So I built us an app `[app showcase / screenshot]`
**On screen**
- Kicker: HagueHouse
- Head: So I built us an app.
- Lede: Every grocery, vet, bus stop and train in the city, with the rent. Toggle each like Uber Eats. Then it scored every neighborhood against our list. Green means go.
- Screenshot: the live app (cc7, the scored map of The Hague), embedded base64
- Caption: a blue dot follows us while we walk it · installs on the phone · works offline · [haguehouse.pages.dev](https://haguehouse.pages.dev/)

_Notes:_ Borrowed from last year's Hague talk. Claude downloaded the real open datasets, built the map with togglable pins, then I had it score every neighborhood against my requirements and color it green to amber. GPS dot, installable PWA, offline. This screenshot is the actual app. Land the invitation: "you have a version of this. A decision you're making on spreadsheets and a gut feeling. This is what pointing an agent at it looks like."

### 4c · The count `[statement / stat]`
**On screen**
- Statement: Working prototype day one. About *15 sessions* to the real thing.
- Sub: Zero lines of code by me. My wife and I still use it.

_Notes:_ The honest arc, and it's the better story. I had something clickable the first day, which is the hook. Then it took roughly fifteen sessions of "now add this, now fix that" to reach the tool we actually rely on. No code written by me at any point. Say the reachable part out loud: "not seven years of expertise, and not one magic prompt either. A prototype Saturday, then you keep going." That iteration loop is the whole talk in one project, and I'm only on slide five. Now let me build something in front of you.

---

## §03 · live demo (marquee)

### 5 · Section divider `[section]`
**On screen**
- §03
- Head: A whole session, one prompt
- Lede: I used to teach this in 60 minutes. Watch.

_Notes:_ Switch to the terminal. Backup recording ready in case the room wifi is the room wifi.

### 5b · Last year, the hard way `[content]`
**On screen**
- Kicker: a year ago, this conference
- Head: Last year I taught the hard way.
- Body: Data Céilí 2025. To get PDFs into SQL Server I hand-built the schema, wrote the structured-output calls, ran a PowerShell script to wring clean JSON out of the model. A whole session for one stack of PDFs.
- Pull line: This year it's one prompt. And it catches more.
- Artifact: the old way, written up: blog.netnerds.net

_Notes:_ Callback to my own talk here last year. Same task, the manual structured-output route (my 2024 blog post is the writeup). The contrast is the point: a year ago this was a 60-minute session, now it's a sentence, and the one prompt does a better data-quality pass than I did by hand.

### 6 · The one prompt `[showcase / prompt box]`
**On screen** (prompt, verbatim)
> Take every PDF in this folder, design clean SQL Server tables to hold what's in them, load it all, and flag any data quality problems you find on the way.

_Notes:_ That's the whole ask. No schema by hand. Notice I told it to design the tables and to audit the data, not just import it. Steal this prompt. It's on the slide so you can.

### 7 · What it caught `[showcase / content]`
**On screen**
- Kicker: what it caught
- Head: It designed the schema. Then it found what I'd have missed.
- List: duplicate records across files · dates in three formats · numbers stored as text · totals that didn't add up

_Notes:_ The data quality pass used to be my job, and it caught things I didn't. That's the real shift. Not faster typing. A second set of eyes that doesn't get tired. So how do you get that quality on purpose, every time? That's the rest of the talk.

---

## §04 · the tips that actually move quality

### 8 · You don't need clever prompts `[statement]`
**On screen**
- Kicker: §04 · the tip
- Statement: You don't need clever prompts. You need the right *mode*.

_Notes:_ The spoiler from my abstract. Everyone obsesses over prompt wording. That's the instinct, and it's the wrong one. Here are the moves that actually matter, and every one of them is something you can do this week.

### 9 · Plan Mode `[content]`
**On screen**
- Kicker: the mode
- Head: Plan first. Then let it run.
- Body: You'll be tempted to just let it go. Don't. Make it write the plan before it touches anything. You read it, fix the one thing it got wrong, then it executes. The clever part isn't the words. It's making it think out loud before it acts.

_Notes:_ Show Plan Mode live (Shift+Tab). Read the plan, correct one thing, let it go. This single habit is most of my quality, before a single hook fires. Lead with "you'll be tempted to" so it lands as a shared instinct, not a lecture.

### 10 · Let it write the prompt `[content]`
**On screen**
- Kicker: the better prompt
- Head: Let *it* write the prompt.
- Body: Have the conversation first. Then say: now write the prompt for this. The prompt it writes for itself beats the one you'd sweat over. Less satisfying. Better output.

_Notes:_ The spoiler made literal. The room wants a prompt cheat sheet. The cheat is to stop crafting and let it craft. This one's in my own tips: Claude-written prompts outperform human ones.

### 11 · Tell it the stakes `[content]`
**On screen**
- Kicker: the stakes
- Head: Tell it who it's for.
- Body: Tell it a hospital runs on this code and a patient's chart depends on it. Tell it the boss is reviewing the result. It reaches for safer patterns and works harder. Not perfect. Better.

_Notes:_ Hero-complex framing. Generic on stage only: hospital, HIPAA, boss in the room. Never the real customer or employer. Switched to "tell it" so the room hears an instruction they can use, not a story about me.

### 11b · The magic words `[content]`
**On screen**
- Kicker: the magic words
- Head: Say "best practices." Then show it what you like.
- Body: You don't engineer prompts. You say "getting-started page, best practices" and it pulls in what good looks like. Then point it at a site you admire and say make it feel like that. Borrowed taste beats a clever sentence.

_Notes:_ The cheat the room actually wants. Two moves: say "best practices" (landing page, UX, getting-started, whatever) and it reaches for what good looks like; then show it a site you admire and say make it feel like that. I borrow taste from sites I'm jealous of. Reinforces "you don't need clever prompts."

### 11c · Ask for HTML, not a picture `[content]`
**On screen**
- Kicker: the format trick
- Head: Ask for HTML, not a picture.
- Body: Diagrams, social cards, this deck. Have it build them in HTML instead of generating an image. Then "make that line red" actually works. An image you regenerate. HTML you edit.

_Notes:_ A reusable trick. For anything visual (diagrams, social cards, this very deck), ask for HTML and CSS, not a generated image. An image you have to regenerate to change one line; HTML you just edit. Sets up the "this deck is HTML" payoff at the end. Those are the prompt-level moves. The next section is the system underneath them, and it's more reachable than it looks.

---

## §05 · enterprise-grade = skills + hooks

### 12 · Section divider `[section]`
**On screen**
- §05
- Head: How I get enterprise-grade
- Lede: Not a better prompt. Guardrails you set once, in plain English.

_Notes:_ This is the part I love most. Skills and hooks. And here's the promise up front so nobody's intimidated: I don't write any of this by hand. I describe a rule in a sentence, Claude builds it. You'd start with one.

### 13 · Skills `[content]`
**On screen**
- Kicker: skills
- Head: Reusable expertise
- Body: A skill is a folder of know-how Claude loads when it's relevant. Think a module, or the runbook you wish your team actually read. Mine cover managing SQL Server, my platform's API, my design system, even cleaning up my writing. Teach it once. It shows up everywhere.

_Notes:_ Eleven skills in this one repo. I never re-explain my standards. The skill carries them into every session. Reachable turn: "you don't need eleven. You need one, for the thing you explain over and over."

### 13b · Making a skill `[content]`
**On screen**
- Kicker: making one
- Head: I don't write skills. I have it write them.
- Body: Point it at the skills best-practices doc, have it research the topic, then say: build a skill from this. A skill only loads when it's relevant, just the part that matters, so your standards stop crowding the context window.
- Pull line: One skill per domain. It loads only when you need it.

_Notes:_ How to actually make one, plus why they beat one giant rules file. Give Claude the skills best-practices doc, have it deep-research the domain, then say build a skill from that. Progressive disclosure is the payoff: a skill loads only the slice it needs in the moment, so a huge CLAUDE.md stops eating the context window. One skill per domain. This is the slide that proves the elaborate stuff is delegated, not hand-built.

### 14 · I wrote zero of them `[statement / stat]`
**On screen**
- Kicker: hooks
- Statement: I have 137 hooks. I wrote *zero* of them.
- Sub: I described each rule in a sentence. Claude wrote the code.
- Line: You don't need 137. You need your first one, tonight.

_Notes:_ The number is real and the room will react, but the takeaway is the second line, not the first. Each hook started as a complaint I said out loud. Hooks fire on events: before a write, after a write, when it tries to finish. They can nudge, or hard-block and hand the reason back. You do not need to be a shell wizard. I describe the rule, Claude writes the hook. (Old slide led with "137 / 104 before a character hits disk" and it landed as a flex. Flipped so the hero is "wrote zero, you'd start with one.")

### 14b · The mental model `[cards, 2x2]`
**On screen**
- Kicker: the mental model
- Head: Four kinds of hook. Four jobs.
- Cards:
  - **before a write**: A linter on steroids. It catches the problem before it ever hits disk.
  - **before it stops**: A QA gate. No declaring victory on half-done or dishonest work.
  - **on my prompt**: Context injection. You paste an error, it tells the model where to look.
  - **every command**: A silent rewriter. It cleans up the shell command on the way through.

_Notes:_ This is the frame the whole section hangs on, and the line that landed on Reddit. If they know a linter and a git pre-commit hook, they already know this; just say so. Pre-write hooks are a linter on steroids. Stop hooks are a QA gate. Prompt hooks inject context so the model isn't guessing. And a rewriter quietly improves every command. Four events, four jobs. Now the examples.

### 14c · Before a write: the linter `[cards, 3x2]`
**On screen**
- Kicker: before a write
- Head: A linter on steroids.
- Lede: Each one is a mistake I only wanted to catch once.
- Cards:
  - **no stray HTML**: innerHTML, inline styles, trust-HTML with no sanitizer? Rejected.
  - **file size cop**: About to write a 900-line monster? It warns you first.
  - **line endings**: A stray CRLF would muddy every diff, so it never lands.
  - **no "fix later"**: TODO, FIXME, "temporary"? Blocked. No deferred work.
  - **auth sentinel**: Touch the auth routing the wrong way and it hard-blocks.
  - **naming contract**: A new endpoint or table off-convention won't land.

_Notes:_ A sampler, not the whole 104. Each one is a class of mistake I got tired of catching by hand, which means each one is a guardrail you'd recognize from your own pain. They fire on the write itself, so the bad version never reaches disk. Keep this generic, no project name.

### 16 · It can't ship the injection `[showcase / content]`
**On screen**
- Kicker: before a write, in action
- Head: It can't ship the injection.
- Body: Try to write `"... WHERE id = '$UserId'"` into an endpoint and the write is blocked. Use a real parameter, or it doesn't land.

_Notes:_ One pre-write hook in close-up. Hard block, exit 2, points it at parameterized queries. There's an escape hatch for the rare safe case, but the default answer is no.

### 14d · The 77% hook `[statement / stat]`
**On screen**
- Kicker: the one that surprised me
- Statement: 77% of edits hit a file the model never read.
- Sub: Usually right after a compaction wiped its memory. Now it can't edit what it hasn't read this session.

_Notes:_ Read-before-Edit gate. I measured it: across my sessions, 77% of edits landed on files the model hadn't read that session, mostly after a compaction wiped its memory. So now the edit is blocked until it reads the file fresh. This is a use number, not a brag number: it explains a failure mode they'll absolutely hit. That's why the room sits up.

### 15 · It can't weasel out `[showcase]`
**On screen**
- Kicker: my favorite stop hook
- Head: It can't weasel out.
- Blocked phrases: "pre-existing" · "out of scope" · "not from my changes" · "bigger refactor"
- Rule: Every error is yours to trace and fix. Not label. Not defer.

_Notes:_ The QA gate made personal. When Claude tries to wrap up with blame-dodging language, the Stop hook throws it back and makes it either fix the bug or name the exact file, line, and a real technical reason. It's my management style, written as a hook. Get the laugh.

### 15b · Born from an outage `[content]`
**On screen**
- Kicker: the targeted kind
- Head: Born from a real outage.
- Body: An empty allowlist once rejected same-origin connections and killed our live chat. Now a hook matches that exact mistake and blocks it before it ships.
- Pull line: A bug burns me once. Then I write the hook that never lets it back.

_Notes:_ The other flavor of hook: not a general rule, a scar. A WebSocket origin check with an empty allowlist rejected same-origin browser connections and took down live chat. The hook now pattern-matches that exact bad logic. Every painful bug becomes a hook so it can't recur. This is a move they can copy on day one: turn your last outage into your next guardrail. Keep generic, no project name.

### 15c · The quiet ones `[cards, 2-up]`
**On screen**
- Kicker: the quiet ones
- Head: Some hooks just help.
- Cards:
  - **context injection**: You paste a stack trace. A hook reads it and points the model at the file and the log, instead of letting it guess.
  - **command rewriter**: Every shell command runs through a rewriter first, trimming noise and saving tokens before the model sees a thing.

_Notes:_ Not every hook blocks. These two just make the model smarter and cheaper. The prompt hook reads what you paste and aims the model at the cause. The command rewriter pipes every shell command through a small CLI that filters output and saves tokens. Both invisible, both always on.

### 17 · The flywheel `[content / statement]`
**On screen**
- Kicker: skills + hooks together
- Body: Add an endpoint and a hook checks it's documented in the matching skill. If it isn't, it nags until it is.
- Statement: Skills teach. Hooks keep them honest.

_Notes:_ That's the flywheel. The skills carry the standard, the hooks enforce it, and the two stay in sync without me babysitting. And all that scaffolding buys one thing: the nerve to take your hands off the wheel. Which answers the biggest question we opened with.

---

## §06 · let it rip, then check

### 21c · Yolo, responsibly `[content]`
**On screen**
- Kicker: §06 · let it rip
- Head: I let it rip. On a box that can take it.
- Body: Auto-approve everything and it moves fast. So run it where that's safe: a dedicated dev machine, containers, snapshots you can roll back. And when it fetches data, fence it to sources you trust.
- Pull line: Freedom on a leash you set once.

_Notes:_ Here's the payoff for the question from slide 2c. Call it back out loud: "remember the question about handing it the keys? This is the answer." Yes I auto-approve a lot. I also do it on a machine built for it: dedicated dev box, dev containers, snapshots I can roll back. When it pulls external data I fence it to trusted sources (think .gov-only allowlists), and a pre-write hook can check fetched data before it lands. Freedom, with a leash you set once.

### 21d · Smaller attack surface `[content]`
**On screen**
- Kicker: smaller attack surface
- Head: I stopped getting hacked. I deleted the database.
- Body: My recipe site sat on WordPress and got broken into for years. Claude moved it to static files behind Cloudflare. Logins still work, one-time passwords, no database to breach.
- Pull line: The safest server is the one that isn't running.

_Notes:_ Containing the agent is half of it. Shrinking what can break is the other half. realcajunrecipes.com had been on WordPress since forever and kept getting hacked. Claude migrated it to static files behind Cloudflare. The fun part: logins still work, one-time passwords through Cloudflare, with no backend database to break into. Less to run means less to attack.

### 21 · Trust nothing, check everything `[content]`
**On screen**
- Kicker: the double-check
- Head: Trust nothing. Check everything.
- Body: End every session with /doublecheck. Then let a second model read the work, because the one that wrote it is too proud to find its own bugs.

_Notes:_ /doublecheck catches what I'd miss; I run it as a hook and a habit. Cross-model: write in Claude for the project depth, check in GPT for the skepticism. A quick lessons-learned pass after the big sessions. And when you really won't take "done" on faith, you don't check by hand. You build a loop that checks for you. That's next.

---

## §07 · ralph loops

### 18 · I don't trust "done" `[statement]`
**On screen**
- Kicker: §07 · ralph
- Statement: I don't trust *"done."* So I built a loop that doesn't either.

_Notes:_ Straight off "check everything": here's how I make the machine do the checking. The Ralph loop. I reach for it on big jobs where the quality bar is non-negotiable. I don't lean on the built-in autopilots for this. And it's simpler than it sounds, which is the next slide.

### 19 · One item, verify, commit, repeat `[content]`
**On screen**
- Kicker: the loop
- Head: One item. Verify. Commit. Repeat.
- Body: A tracker lists the work. Each pass does one item, builds it, tests it, runs a five-point security review, re-checks itself from scratch, then commits. If the tracker count doesn't move, it stalled, and the loop stops it from claiming victory.
- Pull line: Same loop on Claude, Codex, or Copilot. One flag.

_Notes:_ Stateless on purpose. Progress lives in git and the tracker, not the model's memory. Fresh context every pass, which is its own quality trick. Eight quality gates baked into every iteration. The pull line plants the next two beats: the same loop runs on any engine, which sets up the harness, and then the CLI table.

### 22 · Own the harness `[statement / content]`
**On screen**
- Kicker: the architecture
- Head: The harness beats the model.
- Body: My standards live in files on disk, not inside the model. Skills, hooks, memory, all text you can read and change. Swap the model, even the whole CLI, and the system still knows your project.
- Pull line: Memory you control beats training you don't.

_Notes:_ The payoff for the whole build since §04. Skills, hooks, and the loop all live in files I own, so the harness, not the model, holds the project. Hand someone the folder and it just works, and that someone could be you, starting with one skill and one hook tonight. A model upgrade never scares me. And because the harness is portable, I can run it on any of the big CLIs, which is exactly the next slide. (Switched "I own" to "you can read and change" so the room hears something ownable, not a custom rig only I understand.)

---

## §08 · the tools + the bill

### 20 · Three CLIs, mid-2026 `[compare]`
**On screen**
- Kicker: §08 · the tools + the bill
- Head: The tools converged. The bills did not.

| Tool | Autonomy | Models | Pricing now |
|------|----------|--------|-------------|
| **Claude Code** | Plan Mode, hooks, agents | Opus / Sonnet / Haiku | subscription or usage |
| **Codex** | headless exec | GPT-5.5 | usage |
| **GitHub Copilot** | catching up fast | Claude and others | usage-based (from Jun 1) |

_Notes:_ Callback to the loop I just showed: I run my Ralph loop on all three, so this isn't theoretical. June 1, Copilot moved to usage-based and dropped its free models. Microsoft even moved its own developers off Claude Code onto an internal Copilot CLI. The tools converged. The bills did not. That last line is the door into the money.

### 21b · Right tool, right cut `[content]`
**On screen**
- Kicker: right tool, right cut
- Head: The smartest model is the wrong tool for a one-liner.
- Body: You'll be tempted to point the biggest model at everything. Don't. Give a big model a tiny, exact fix and it wants to redesign the world. For surgical edits, reach for a smaller model or a smaller-context tool. It does the one thing and stops.
- Pull line: Some days the best model is just off. A steady second tool saves the morning.

_Notes:_ Real example: a one-pass case-fix across files. The big model kept trying to improve everything around it; a smaller-context tool did exactly the one thing and stopped. Also: model quality swings day to day, and right after a launch the new model is at its best. A steady second tool is your fallback on the off days. Picking the right tool matters more every month, because of what's coming next. Timeless version, no model versions named. Added the "you'll be tempted to" so it teaches the instinct, not just the answer.

### 24 · The cheap-AI party is ending `[statement]`
**On screen**
- Kicker: last call
- Statement: The cheap-AI party is ending.
- Sub: May 2026.

_Notes:_ My abstract bragged about a free tier. That line aged in about two months. Worth being honest about it on stage. (Leave this exactly as it is. It's the most disarming slide in the deck because it's me admitting my own pitch went stale.)

### 25 · What changed `[content]`
**On screen**
- Kicker: what changed
- List:
  - Per-token prices fell. Usage climbed faster. Agents can multiply demand many times over.
  - Big shops are pulling back. One reportedly burned a year of AI-coding budget in four months.
  - The subsidies are drying up. Frontier prices go up from here.

_Notes:_ Cite the real ones lightly: Goldman on agent token demand, the Uber budget story, Copilot and Actions repricing. The crowd is skeptical, so name sources and move on.

### 23 · Know where the money goes `[content]`
**On screen**
- Kicker: the tooling
- Head: Know where the money goes.
- Body: Papers are cheap. Small codebase, a few deep thinks. Software is the guzzler. Big context, long loops. A flat plan covers the daily grind. Save pay-per-token for the work that has to be perfect.

_Notes:_ Flat monthly plan for daily work; pay-per-token API for the highest-quality runs (cheap for papers, the codebase is tiny). If your employer has Bedrock or Azure AI Foundry, the same model behind an enterprise endpoint can be even better. This hands straight into how to stay sharp.

### 26 · Spend like it's your money `[content / statement]`
**On screen**
- Kicker: how to stay sharp
- Statement: Spend like it's your money. Because now it is.
- List: Plan Mode kills rework · right model for the job · Ralph only where the quality earns the tokens

_Notes:_ The honest close to this section: the tools got good fast, right as the economics got real. Be deliberate and you still come out way ahead. And that discipline isn't only for code. The same system runs the rest of my job, which is where I'm headed next.

---

## §09 · beyond code

### 27 · Same method, no code `[section]`
**On screen**
- §09
- Head: Same method, no code
- Lede: Skills, hooks, commands. Pointed at writing, not shipping.

_Notes:_ Keep this generic. No employer, no domain. The reassurance for the non-coders in the room: everything you just saw works on the work you actually do.

### 27b · Editor, not author `[content]`
**On screen**
- Kicker: about the writing
- Head: I bring the content. It brings the grammar.
- Body: I don't ship slop. The ideas and the facts are mine. It words them better, like an editor, not a ghostwriter. Even updating old posts: it flags what's stale and checks the Wayback Machine, but it never touches my voice.
- Pull line: My voice. Its polish.

_Notes:_ My stance on AI writing, and it backs this deck's whole no-slop rule. I supply the substance; it tightens the words like an editor would. When I refresh old blog posts, it flags what's outdated and checks the Wayback Machine for dead links, but the voice stays mine. (A colleague worried it would rewrite her in AI-voice; she relaxed when she saw it only fixed the practical stuff.) This answers the question every writer in the room is asking.

### 28 · The papers `[content]`
**On screen**
- Kicker: the work
- Head: Briefs that hold up
- Body: No rigid template. I talk to it like a person while the expert and I work through the substance. It learns the reviewer's habits and keeps them as memory, so the next draft already speaks their dialect. It hands back a finished document.
- Pull line: The next draft starts closer.

_Notes:_ Markdown is fine going in, the polished .docx comes out. The reviewer's house style gets captured as memory once and reused. Strictly generic on stage: executive briefs and business development, paired with subject-matter experts. Credit the experts out loud, every time. The work is good because they know the material and the method carries it. They love the results, and that's the line that gets people to reach out.

### 29 · Give it one job `[statement / content]`
**On screen**
- Kicker: the real trick
- Head: Give it one job.
- Body: Ask it to write great prose and solve the file export in the same breath, and the prose gets worse. It splits its attention. So take the busywork off its plate and let it think about one thing.
- Pull line: A calm model does better work.

_Notes:_ My words: it gets anxious when it has to make room for a task it can't finish yet. Competing objectives degrade the output. Don't make it juggle the .docx while it's still drafting. This is true for code too. Same lesson as the papers slide: take the export off its plate.

### 27c · Knowing the limits `[content]`
**On screen**
- Kicker: knowing the limits
- Head: It won't fake what it can't know.
- Body: I translated my recipe site into French. But I would not let it invent French French. That's an oral language with almost nothing written down, so a translation would be a guess dressed up as a fact. We used the gap to tell the real story: the French they beat out of my grandparents in school.
- Pull line: A model that admits a limit is one you can trust.

_Notes:_ The honest-use beat, and it lands emotionally, so I let it. The recipe site got a French translation, but I refused to let it fabricate French French: it's an oral language with no real written corpus, so a "translation" would be a confident fake. Instead we used that empty space to tell the cultural-suppression story (my grandparents were beaten for speaking French in school). Knowing what it can't do is a feature. And a tool you can trust that much is one you hand the keys to, which is how it got into my whole network, next. Leave this slide alone. It's the heart of the talk.

---

## §10 · it's contagious

### 30 · I couldn't explain my own network `[showcase]`
**On screen**
- Kicker: §10 · it spreads
- Head: I couldn't explain my own network.
- Body: So I gave Claude full access and PowerShell and said: map it, then explain it to my friend. Thirteen VMs, two subnets, eight SQL instances, the SSH tunnel. One page.
- Artifact: the LeLab topology page (lab.html)

_Notes:_ I built it for one friend who needed to understand my setup. Full system access, any tool it wanted. The reachable angle: even I couldn't explain my own mess, and it untangled it in one page. Your environment is not scarier than mine.

### 31 · It converted another `[statement]`
**On screen**
- Statement: I built it for one friend. It converted *another*.

_Notes:_ I showed it to another network admin. He loved it enough that it pulled him into Claude Code, and he rebuilt it for his own work. That's the whole title of this talk, right there.

### 31b · Fair warning `[content]`
**On screen**
- Kicker: fair warning
- Head: A project a day. I'm not joking.
- Body: Small tools, whole sites, things only you will ever use. Once you see what a day can produce, it's hard to stop. A friend told me real life keeps getting in the way of his Claude Code time. Same.
- Pull line: This might ruin my life. Worth it.

_Notes:_ The addiction beat, the emotional engine of "it spreads," and the joy that makes people reach out. A project a day is real: little tools nobody else will ever want, whole sites, whatever. My friend Brandon complained that real life (his husband wanting to go hiking) keeps interrupting his Claude Code time. Same. Said with a grin. Keep this loud. This is the feeling people are buying.

---

## §11 · one more thing

### 32 · This deck `[statement]`
**On screen**
- Kicker: one more thing
- Statement: Not PowerPoint. It's HTML, built with Claude.

_Notes:_ The deck is the proof, and the payoff of "ask for HTML" from §04. One file, keyboard-driven, made the same way as everything else today. You watched me describe the moves; this whole thing is the moves.

---

## §12 · closing

### 32b · Do the reps `[content]`
**On screen**
- Kicker: how do you start
- Head: Forget the course. Do the reps.
- Body: People ask which course to take. I never found one that beat sitting down and using it every day. Watch how other people drive it, then steal what works.
- Pull line: The skill is just the hours. Start tonight.

_Notes:_ The empowering penultimate beat (from the live Q&A). Everyone wants the tutorial. I never found one better than just using it daily and watching how other people drive it. The skill is reps. Hands straight into "what would you build?"

### 33 · What would you build `[closing]`
**On screen**
- Kicker: thank you, Dublin
- Statement: What would *you* build?
- Links: dbatools.io · realcajunrecipes.com · [ slides URL ]

_Notes:_ No socials. End on the question and take hands. This is the whole posture of the talk in four words: not look what I built, but what would you build.