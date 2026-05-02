#!/usr/bin/env bash
# Initialize teaching session files in the project root.
# Usage: bash init-session.sh <project-root> <topic-slug>
#
# Creates teaching-plan-<topic>.md and learning-log.md in the project root
# if they don't already exist. Safe to run multiple times (idempotent).

set -euo pipefail

PROJECT_ROOT="${1:?Usage: init-session.sh <project-root> <topic-slug>}"
TOPIC_SLUG="${2:?Usage: init-session.sh <project-root> <topic-slug>}"

# Validate topic slug: lowercase letters, numbers, and hyphens only
if [[ ! "$TOPIC_SLUG" =~ ^[a-z0-9]([a-z0-9-]*[a-z0-9])?$ ]]; then
    echo "Error: topic-slug must contain only lowercase letters, numbers, and hyphens." >&2
    echo "       It must start and end with a letter or number." >&2
    echo "       Got: '$TOPIC_SLUG'" >&2
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ASSETS_DIR="$(cd "$SCRIPT_DIR/../assets" && pwd)"

PLAN_FILE="$PROJECT_ROOT/teaching-plan-${TOPIC_SLUG}.md"
LOG_FILE="$PROJECT_ROOT/learning-log.md"

# Create teaching plan from template if it doesn't exist
if [ ! -f "$PLAN_FILE" ]; then
    cp "$ASSETS_DIR/teaching-plan-template.md" "$PLAN_FILE"
    echo "Created: $PLAN_FILE"
else
    echo "Exists:  $PLAN_FILE"
fi

# Create learning log from template if it doesn't exist
if [ ! -f "$LOG_FILE" ]; then
    cp "$ASSETS_DIR/learning-log-template.md" "$LOG_FILE"
    echo "Created: $LOG_FILE"
else
    echo "Exists:  $LOG_FILE"
fi
