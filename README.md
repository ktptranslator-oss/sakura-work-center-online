# Sakura Work Center

Public-safe static dashboard skin for Sakura work shortcuts.

This repo should contain the dashboard shell, CSS, JavaScript, and image assets only. Shortcut URLs are configured inside each browser profile and saved to that browser's `localStorage`.

## What Is Safe To Commit

- `index.html`
- `assets/`
- `_headers`
- `robots.txt`
- `open-local.cmd`
- `README.md`
- `AGENTS.md`

Do not commit exported shortcut config files, direct DIW access URLs, passwords, cookies, Chrome profile folders, or private company tokens.

## Use On Another PC

1. Open the hosted dashboard from the Chrome profile you want to use.
2. Click `Edit`.
3. Click each shortcut slot and paste the URL for that PC/profile.
4. Click `Done`.
5. Bookmark the dashboard in that same Chrome profile.

The configured URLs stay local to that browser profile on that PC.

## Move Setup Between PCs

Use `Export` on the already configured PC and `Import` on the next PC. The exported JSON can contain sensitive links, so keep it private and do not upload it to GitHub.

## GitHub Pages

This site has no build step.

Typical GitHub Pages setup:

- Source: deploy from branch
- Branch: `main`
- Folder: `/root`

After Pages is enabled, open the GitHub Pages URL and configure shortcuts locally in each browser profile.

## Local Test

Run `open-local.cmd` or open `index.html` directly.
