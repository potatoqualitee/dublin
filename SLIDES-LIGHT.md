# Slides redux

Notes for the rebuilt lightning deck. The live deck is `index.html`.

## What changed

This is now the five-minute lightning version: 10 slides, screenshot-forward, one spine.

The old 32-slide arc had product tour, shipped work, maintenance work, hooks, skills, commands, business papers, and a longer closing. For five minutes, that is too much. This cut keeps only the pieces that create a clean story:

1. Chrissy has stopped writing code line by line.
2. Local agents are different from browser chat because they live with the work.
3. Machine access changes what can be delegated.
4. Real shipped artifacts prove it.
5. Guardrails make the speed survivable.
6. The payoff is freedom to build.

The deck still uses the Data Céilí retheme from `DESIGN.md`: logo in the frame, green and sage rules, yellow pills, and the soft footer wash. The chrome, keyboard navigation, progress bar, links, and screenshot lightbox script remain from the longer deck.

All on-screen copy follows the humanizer rules in `CLAUDE.md`: terse fragments, no promo fluff, no em dashes, and Chrissy's confident practitioner voice.

## Five-minute story arc

Target pacing: 10 slides, about 25 to 35 seconds each. The first and last slides can move faster.

- **0:00 to 0:25**: Cold open. "I haven't written a line of code in months." Let the room feel the claim before explaining it.
- **0:25 to 0:50**: Credibility. This is from someone who built and maintains serious tooling.
- **0:50 to 1:25**: The shift. Browser chat is useful, but the local agent can read the repo, run commands, edit files, and leave receipts.
- **1:25 to 2:00**: Machine access proof. The lab map shows what happens when the agent can inspect the machine.
- **2:00 to 3:15**: Shipped work. dbatools.io, Real Cajun Recipes, and blog maintenance show three kinds of work: migration, product improvement, and backlog cleanup.
- **3:15 to 4:25**: The honest part. Speed needs control surfaces. Hooks, skills, commands, scanners, and a human merge keep the work reviewable.
- **4:25 to 5:00**: Close. The conclusion is not "AI writes code now." It is "I get to build anything I want now."

## Running order (10 slides)

| # | Section | Layout | On screen | Asset / link |
|---|---------|--------|-----------|--------------|
| 1 | §00 cold open | title | "CLAUDE CODE" + "will change your life" + "I haven't written a line of code in months." | Chrissy LeMaire / Data Céilí 2026 / five-minute lightning cut |
| 2 | §00 who's talking | bio | "Chrissy LeMaire" + Microsoft MVP · GitHub Star · Manning author · creator of dbatools. "I build tools to make myself faster. This one got addictive." | none |
| 3 | §01 the shift | versus | "One lives in a tab. One lives on your machine." Browser chat versus local agent. | none |
| 4 | §01 the shift | showcase | "It mapped my whole network" + Claude found VMs, SQL instances, subnets, and SSH tunnel. | `references/shot-lab.png` · link: blog.netnerds.net/lab |
| 5 | §02 proof | showcase | "dbatools.io, in a day" + old HTML in, dark mode and useful docs out. | `references/shot-dbatools.png` · link: dbatools.io |
| 6 | §02 proof | showcase | "realcajunrecipes.com" + off WordPress, static, French French at scale. | `references/shot-realcajunrecipes.png` · link: realcajunrecipes.com |
| 7 | §02 proof | showcase | "100+ posts, one prompt" + maintenance, links, screenshots, commands, embeds. | `references/ai-cli-blog.png` · link: blog-refresh prompt |
| 8 | §03 guardrails | hook intro | "Let it run. Make it answer." Hooks, skills, commands. | none |
| 9 | §03 guardrails | list | "The agent proposes. A person merges." Scanners outside, hooks inside, human at merge. | none |
| 10 | §04 closing | rainbow | "I get to build anything I want now." | none |

## Assets

All referenced assets live in `references/` and are used by relative path.

| File | Slide | Source |
|------|-------|--------|
| `shot-lab.png` | 4 | dropped by Chrissy |
| `shot-dbatools.png` | 5 | headless capture of dbatools.io |
| `shot-realcajunrecipes.png` | 6 | headless capture of realcajunrecipes.com |
| `ai-cli-blog.png` | 7 | copied from `C:\github\blog\static\images` |

The lab figure keeps a graceful fallback: if `shot-lab.png` is missing it shows a dashed placeholder; on successful load the placeholder clears itself.

## Image interactions

Clickable screenshots open the real site in a new tab. Clicking an image never advances the slide. Keyboard navigation and empty-area clicks still move through the deck.

| Slide | Image opens |
|-------|-------------|
| 4 | blog.netnerds.net/lab |
| 5 | dbatools.io |
| 6 | realcajunrecipes.com |
| 7 | github.com/dataplat/web/blob/html/prompts/blog-refresh.md |

## Decisions

- Cut the full talk down to a tight 10-slide lightning arc instead of trying to speed-run 32 slides.
- Kept title, bio, browser-versus-local-agent explainer, one machine-access proof, three shipped-work proofs, one guardrail explanation, one ownership slide, and the rainbow close.
- Removed the product-surface tour, Codex/Copilot comparison, Hague map, link-rot detail slides, skills deep dive, commands deep dive, Fowler screenshot, business-paper section, old-guard sentiment screenshot, and extra closing statements from the live `index.html` cut.
- Kept the same visual system and interaction model so the deck still feels like the longer version, just focused.
- Left `lightning.html` and `SLIDES-LIGHTNING.md` untouched because they are currently deleted in the worktree and the requested files were `index.html` and `SLIDES-REDUX.md`.

## Pending

- Practice once with a timer. If it runs long, drop slide 2 verbally in under 10 seconds and spend the saved time on slides 4 through 7.
- Confirm whether "French French" is the phrase Chrissy wants to say live, or swap to "European French" if the room needs the cleaner wording.