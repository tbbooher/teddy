#!/bin/zsh

echo "Deploying teddy app to cromwell..."

rsync -av --exclude 'node_modules' --exclude '.git' --exclude '.claude' /Users/tim/code/teddy/ deploy@cromwell:/srv/rufus/teddy/

echo "✓ Files synced"
echo "Run on server: docker compose up -d --build teddy"
