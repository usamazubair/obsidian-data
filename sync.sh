#!/usr/bin/env bash
# Commit and push all vault changes to GitHub.
cd "$(dirname "$0")" || exit 1

git pull --rebase --autostash
git add -A
if ! git diff --cached --quiet; then
    git commit -m "vault backup: $(date '+%Y-%m-%d %H:%M')"
fi
git push
