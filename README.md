# ClickFix.fyi

An interactive technical field note on ClickFix social-engineering campaigns. The site reproduces the browser-to-clipboard-to-interpreter flow with a benign runnable payload, then documents detection heuristics, execution stages, incident response, and primary sources.

## Local development

```sh
npm install
npm run dev
```

The production build is generated with:

```sh
npm run build
```

## Safety principles

- The simulation writes a clearly displayed educational command to the clipboard only after a user clicks the copy button.
- The command downloads a public, inspectable demo script that only prints text and exits. It does not collect data, persist, change settings, or retrieve additional files.
- Any command fragments shown are deliberately defanged.
- Recovery guidance links to Microsoft and CISA source material.

## Content structure

- `/` — runnable demo, execution model, detection heuristics, response, and technical notes
- `/demo` — guided safe simulation
- `/how-it-works` — complete and more technical attack-chain explanation
- `/news` — curated research and source library

The site is built with Astro and is intentionally static: no analytics, forms, accounts, or backend services. The production build adds a minimal Cloudflare-compatible asset worker so the same static output can be hosted by Sites.
