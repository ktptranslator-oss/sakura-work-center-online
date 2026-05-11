# AGENTS.md

## Project Intent

This repository is a public-safe Sakura Work Center dashboard skin. It should provide the visual shell, shortcut slots, icons, and local browser configuration flow for a personal work launcher.

The owner wants to use the same dashboard skin across 3-4 PCs while manually configuring private shortcut URLs inside the correct Chrome profile on each PC.

## Security Rules

- Never commit real shortcut URLs that contain access tokens, especially DIW/E-Waste URLs with parameters such as `uid`, `bid`, or `st`.
- Never commit passwords, cookies, exported browser data, Chrome profile directories, or exported `sakura-work-center-config.json` files.
- Treat exported dashboard config JSON as private because it may contain direct access links.
- The committed app should remain useful even when every shortcut URL is empty.

## Architecture

- `index.html` contains the static app, styles, and local configuration logic.
- `assets/` contains public-safe icons and background images.
- Shortcut URLs are stored in browser `localStorage` under `sakuraWorkCenter.shortcuts.v1`.
- GitHub Pages can host the app because there is no backend and no build step.

## Setup Help For Another PC

When helping the owner set this up on another PC:

1. Open the GitHub Pages dashboard URL in the intended Chrome profile.
2. Confirm the page shows shortcut slots with the Sakura skin.
3. Click `Edit`.
4. For each needed slot, paste the real work URL while logged into the correct account/profile on that PC.
5. Click `Save` for each shortcut and then `Done`.
6. Bookmark the dashboard in that same Chrome profile.

If the owner already exported config from another PC, import the JSON from a private local file. Do not upload that JSON to GitHub or any public storage.

## Maintenance Guidance

- Keep dependency count at zero unless there is a strong reason.
- Keep assets relative, for example `assets/planner-icon.svg`.
- Keep the dashboard static and hostable from GitHub Pages.
- If adding new shortcut slots, add empty defaults only. The owner should fill URLs locally.
