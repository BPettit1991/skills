#!/usr/bin/env bash
# Re-copies the bundled skills from skills/cloud/ so this plugin tracks upstream.
# Run from anywhere after syncing the fork with google/skills.
set -euo pipefail
ROOT="$(git -C "$(dirname "$0")" rev-parse --show-toplevel)"
DEST="$(cd "$(dirname "$0")" && pwd)/skills"
SKILLS=(
  gemini-live-api
  gemini-api
  google-cloud-solution-agentic-ai-bidirectional-streaming
  developing-genkit-js
  firebase-basics
)
rm -rf "$DEST"
mkdir -p "$DEST"
for s in "${SKILLS[@]}"; do
  cp -R "$ROOT/skills/cloud/$s" "$DEST/$s"
done
echo "Synced ${#SKILLS[@]} skills into $DEST"
