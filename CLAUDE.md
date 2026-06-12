# Dublin presentation

Conference slide deck for Chrissy LeMaire's talk "Claude Code Will Change Your Life For The Better." Single self-contained `slide-template.html`, keyboard-driven 16:9 slides. Design system lives in `PRODUCT.md` and `DESIGN.md` (impeccable skill).

`slide-template.html` is the slides template. It carries one worked example of each layout (`.s-title`, `.s-section`, `.s-content`, `.s-statement`, `.s-showcase`, `.s-compare`, `.s-closing`) plus the spec chrome and the keyboard/progress logic. Build real slides by copying a `<section class="slide ...">` block and swapping its copy, not by reinventing markup. Keep the shared chrome, `data-section`, and `data-reveal` patterns intact so navigation and reveal timing keep working.

## Writing slide copy

Whenever I add or edit any slide copy (anything an audience reads on screen), run the **humanizer** skill on that copy before considering it done. This deck is the live proof of the talk's thesis, so the words cannot read as AI-generated.

Specifics that matter most here:

- No em dashes and no `--`. Use commas, colons, periods, or parentheses.
- Slide text is terse. Fragments over full sentences. Cut filler and hedges.
- No promotional adjectives ("powerful", "seamless", "game-changing", "revolutionize") and no rule-of-three padding.
- Chrissy's voice: confident, direct, no-nonsense. Plain words a senior practitioner would actually say out loud. No marketing, no cleverness.

## Design

Follow `DESIGN.md`. Warm cream paper, warm ink, one cayenne accent. Archivo + Fragment Mono. Keep the Swiss spec chrome (rules, corner metadata, progress bar) intact across slides.
