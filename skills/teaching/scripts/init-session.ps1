# Initialize teaching session files in the project root.
# Usage: pwsh init-session.ps1 <project-root> <topic-slug>
#
# Creates teaching-plan-<topic>.md and learning-log.md in the project root
# if they don't already exist. Safe to run multiple times (idempotent).

param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$ProjectRoot,

    [Parameter(Mandatory=$true, Position=1)]
    [string]$TopicSlug
)

$ErrorActionPreference = "Stop"

# Validate topic slug: lowercase letters, numbers, and hyphens only
if ($TopicSlug -notmatch '^[a-z0-9]([a-z0-9-]*[a-z0-9])?$') {
    Write-Error "topic-slug must contain only lowercase letters, numbers, and hyphens, and must start and end with a letter or number. Got: '$TopicSlug'"
    exit 1
}

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$AssetsDir = Join-Path (Split-Path -Parent $ScriptDir) "assets"

$PlanFile = Join-Path $ProjectRoot "teaching-plan-${TopicSlug}.md"
$LogFile  = Join-Path $ProjectRoot "learning-log.md"

# Create teaching plan from template if it doesn't exist
if (-not (Test-Path $PlanFile)) {
    Copy-Item (Join-Path $AssetsDir "teaching-plan-template.md") $PlanFile
    Write-Host "Created: $PlanFile"
} else {
    Write-Host "Exists:  $PlanFile"
}

# Create learning log from template if it doesn't exist
if (-not (Test-Path $LogFile)) {
    Copy-Item (Join-Path $AssetsDir "learning-log-template.md") $LogFile
    Write-Host "Created: $LogFile"
} else {
    Write-Host "Exists:  $LogFile"
}
