# ClickFix.fyi

A one-page guide to ClickFix, the scam where a web page tricks you into pasting a command that installs malware. It leads with the one rule people need, has a safe in-page demo, says what to do if you already ran a command, and has a technical section and sources for IT teams.

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

- The demo writes to the clipboard only when you click its Copy button. What it writes contacts no server: it is a Base64-encoded PowerShell command (`powershell -e …`) that only prints a message, mimicking how real lures obfuscate theirs (on a Mac or Linux it normally just fails with "command not found").
- The terminal in the demo is a text box on the page. Nothing pasted there is executed.
- Command examples outside the demo are defanged (`hxxps`, `[.]`, `.example`) so they can't run.
- The site is static: no analytics, cookies, forms or third-party requests. Fonts are self-hosted.

## Content

Everything lives on `/`. `/demo`, `/how-it-works` and `/news` are kept as redirects to the matching sections for old links. Facts and their sources live in the timeline in `src/pages/index.astro`; update the `reviewed` date in `index.astro` when you re-check them.

`npm run build:sites` additionally wraps the output in a small Cloudflare-compatible asset worker (`src/sites-worker.js`).
