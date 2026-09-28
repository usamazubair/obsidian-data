#!/usr/bin/env bash
# Commit and push all vault changes to GitHub.
# Quiet on success so the Obsidian Shell Commands plugin only notifies on errors.
cd "$(dirname "$0")" || exit 1

git pull -q --rebase --autostash
git add -A
if ! git diff --cached --quiet; then
    git commit -q -m "vault backup: $(date '+%Y-%m-%d %H:%M')"
fi
git push -q
