# Design

## Theme

Light. Data Céilí conference surface: clean white/mint paper, deep blue-black ink, dark sage structure, bright céilí green headings and labels, sunny yellow pills, and a soft olive-to-peach footer wash. Confident Swiss spec still holds the deck together, but the chrome now carries the conference: logo in the frame, sage rules, and a quiet Celtic-knot line mark. Deliberately not a dark terminal.

## Color

OKLCH. Full palette strategy, borrowed from the Data Céilí site without cloning Wix: green is the identity, sage is structure, yellow is energy, peach/blue wash is atmosphere. Accent color is never the only signal.

| Role        | Token            | OKLCH                     | Notes |
|-------------|------------------|---------------------------|-------|
| Paper       | `--paper`        | `oklch(0.986 0.004 154)`  | clean white with a faint green tint |
| Paper sink  | `--paper-2`      | `oklch(0.946 0.018 154)`  | pale mint panels and recesses |
| Ink         | `--ink`          | `oklch(0.225 0.024 252)`  | primary text, blue-black |
| Ink soft    | `--ink-soft`     | `oklch(0.420 0.022 246)`  | secondary text, metadata |
| Hairline    | `--line`         | `oklch(0.660 0.058 148 / .46)` | grid rules, borders |
| Accent      | `--accent`       | `oklch(0.655 0.165 154)`  | Data Céilí green |
| Accent ink  | `--accent-ink`   | `oklch(0.455 0.130 154)`  | accessible green text |
| Sage        | `--sage`         | `oklch(0.515 0.072 146)`  | logo outline and structural rules |
| Yellow      | `--yellow`       | `oklch(0.865 0.165 88)`   | callouts, pills, progress |
| Peach       | `--peach`        | `oklch(0.835 0.095 56)`   | low-opacity conference wash |
| Wash        | `--wash`         | `oklch(0.905 0.038 188)`  | pale blue-green wash |

## Typography

- **Display + body:** Archivo (one committed grotesque, weights 300-800; tight tracking on big headings, strong weight contrast).
- **Mono / spec:** Fragment Mono (400), for kickers, §-section markers, slide numbers, metadata, and code. Meaningful here (a CLI talk), used sparingly as labels.
- Fluid modular scale with `clamp()`, ratio >= 1.25. Slide stage is a fixed 1280x720 frame scaled to viewport, so type sizes are predictable px within the stage.

## Layout

- Fixed 1280x720 (16:9) stage, centered, `transform: scale()` to fit any viewport. All layout reasons in stage pixels.
- Visible Swiss grid: consistent outer margin, a baseline hairline frame, corner metadata (speaker / venue / §number / page).
- Left-aligned, asymmetric within the grid. No centered icon-title-subtitle stacks.
- Slide archetypes: Title, Section divider, Statement (one big line), Content (grid), Showcase (artifact/screenshot), Compare (AI CLI table), Closing.

## Motion

- Keyboard-driven slide transitions: quick cross-fade + small upward translate on incoming content, ease-out-expo, ~360ms.
- Optional staggered reveal of a slide's blocks on entry. Fully disabled under `prefers-reduced-motion`.
- Never animate layout properties; transform + opacity only.

## Components / chrome

- Persistent spec frame: Data Céilí logo at top left, top rule with event metadata, bottom rule with §section label + page counter, thin green/yellow/peach progress bar.
- Keyboard: Right/Space/PageDown/L = next; Left/PageUp/H = prev; Home/End; F = fullscreen. Click also advances.
