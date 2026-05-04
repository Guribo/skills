---
name: skill-completer
description: Whenever any other skill is loaded or invoked, this skill MUST automatically activate to ensure all bundled resources are loaded into context. It also checks for complementary skills that could help with the current task. Use this skill whenever another skill has been invoked, loaded, or mentioned as active. Make sure to trigger this any time you see a skill being used, even if the user doesn't mention it explicitly.
---

## Purpose

When a skill is loaded, its SKILL.md instructions may reference bundled resources in `scripts/`, `references/`, or `assets/` directories. Those files won't be loaded automatically unless you read them. This skill ensures nothing is missed so the model has the full context it needs.

Additionally, some skills work better together. This skill identifies complementary skills that could help with the current task and asks permission before loading them.

## Step 1: Load All Bundled Resources

When a skill has been invoked, immediately scan its directory for bundled resources.

### What to load

Scan the skill's directory for **all subdirectories** containing text files. Common ones include:

- `scripts/` — executable helpers, build scripts, data processors
- `references/` — documentation, domain guides, API references
- `assets/` — templates, config files, icons, fonts
- `agents/` — subagent instruction files
- `hooks/` — lifecycle hook scripts
- `rules/` — linting and validation rules

But don't stop at this list. If you see other subdirectories with text files, load them too. Skills can organize resources however they want.

Exclude these directories — they're tooling, not bundled resources:
- `eval-viewer/` — evaluation UI tools
- `evals/` — test cases
- `node_modules/`, `.git/` — dependency/version control dirs

Load everything regardless of whether the SKILL.md body explicitly mentions the file. Don't assume you know which files matter — load them all.

### How to load

Use the Read tool on each file. For directories with many files, read them in parallel batches. Skip binary files (images, compiled binaries) — but do load text-based assets like templates, JSON configs, YAML files, and HTML/CSS.

If a bundled file is very large (>300 lines), read it in full first to understand its contents, then keep it available for reference. Don't skip large files — they're bundled for a reason.

### Announce what you loaded

After loading, briefly note what you loaded so the user knows:

```
Loaded bundled resources for [skill-name]:
- scripts/build_chart.py
- references/aws.md
- references/gcp.md
```

Keep this brief — one line per file is enough.

## Step 2: Suggest Complementary Skills

After loading bundled resources, look at the `available_skills` list in your system prompt and consider which other skills could help with the current task.

### How to identify complements

Think contextually about what the user is trying to accomplish. Consider:

- **Shared domain**: Skills targeting the same platform, framework, or domain (e.g., `unity-vrc-udon-sharp` and `unity-vrc-world-sdk-3`)
- **Sequential workflow**: Skills that handle the next logical step (e.g., after a coding skill, a testing or review skill)
- **Supporting tasks**: Skills for documentation, deployment, or packaging that naturally follow the current work
- **Cross-cutting concerns**: Skills for security, performance, or architecture that apply across domains

Don't suggest skills that are clearly irrelevant or that would conflict with what's already loaded.

### Ask permission — never auto-load

If you identify a potentially useful complementary skill, present it to the user with a brief reason:

```
Related skills that might help:
- [skill-name]: [one-line reason why it's relevant]
```

Wait for the user to confirm before loading. Never load a complementary skill without explicit permission. If the user says yes, load it immediately using the Skill tool.

### When to skip suggestions

Don't bother suggesting if:
- The user's request is simple and clearly doesn't need more skills
- You've already suggested skills in this conversation
- The available skills have no obvious relevance to the current task

## Edge Cases

- **No bundled resources**: If the skill directory has no subdirectories with text files, skip Step 1 silently.
- **Nested directories**: If bundled resources contain subdirectories, read files recursively.
- **Skill conflicts**: If two skills give conflicting instructions, follow the one most specific to the current task. When in doubt, ask the user.
- **Already loaded**: If you can tell a file was already read in this conversation, skip it.
