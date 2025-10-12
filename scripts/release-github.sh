#!/bin/bash

# Allow passing release notes either as the first argument or via the RELEASE_NOTES env var.
RELEASE_NOTES="${1:-${RELEASE_NOTES}}"
export RELEASE_NOTES

echo "Release notes set to: $RELEASE_NOTES"

./gradlew assembleRelease
./gradlew githubRelease
