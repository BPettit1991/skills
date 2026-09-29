# phone-voice plugin

Personal plugin bundling the Google skills relevant to a phone/voice executive
assistant. Upstream `google/skills` ships these skills but not as a Claude Code
plugin; this plugin fills that gap.

## Bundled skills

| Skill | Purpose |
| :--- | :--- |
| `gemini-live-api` | Real-time, bidirectional voice sessions with the Gemini Live API |
| `gemini-api` | Gemini via the Google Gen AI SDK (text, multimodal, tools) |
| `google-cloud-solution-agentic-ai-bidirectional-streaming` | Reference architecture for live multimodal streaming agents |
| `developing-genkit-js` | Genkit agent framework (Node.js/TypeScript) |
| `firebase-basics` | Firebase CLI login, project setup, app config files |

## Install (Claude Code)

```bash
claude plugin marketplace add BPettit1991/skills
claude plugin install phone-voice@bpettit-plugins
```

## Keeping skills current

The skills are copies of `skills/cloud/<name>`. After syncing this fork with
`google/skills`, refresh them:

```bash
plugins/personal/phone-voice/sync-skills.sh
```

Edit the `SKILLS` list in that script to add or remove skills (for example,
swap `developing-genkit-js` for the Python, Go, or Dart variant).
