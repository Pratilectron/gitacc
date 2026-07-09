#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_FILE="${SCRIPT_DIR}/gitacc"
INSTALL_DIR="${INSTALL_DIR:-/usr/local/bin}"
TARGET_FILE="${INSTALL_DIR}/gitacc"

if [[ ! -f "$SOURCE_FILE" ]]; then
    echo "Error: gitacc script not found at ${SOURCE_FILE}" >&2
    exit 1
fi

if [[ ! -d "$INSTALL_DIR" ]]; then
    mkdir -p "$INSTALL_DIR"
fi

install -m 0755 "$SOURCE_FILE" "$TARGET_FILE"

echo "Installed gitacc to ${TARGET_FILE}"
echo "Run: gitacc --help"
