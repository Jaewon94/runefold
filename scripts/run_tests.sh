#!/usr/bin/env bash
# Run the headless GUT test suite. Exit code 0 = all tests passed, 1 = at least one failed.
# Usage: scripts/run_tests.sh   (set GODOT_BIN to override the Godot binary)
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
GODOT_BIN="${GODOT_BIN:-$HOME/tools/godot/4.7.2/Godot.app/Contents/MacOS/Godot}"
if [ ! -x "$GODOT_BIN" ]; then
  echo "Godot binary not found: $GODOT_BIN (set GODOT_BIN)" >&2
  exit 2
fi
cd "$ROOT/godot"
# Build the class cache first; a fresh clone has no .godot/ and class_name lookups fail without it.
"$GODOT_BIN" --headless --path . --import >/dev/null 2>&1 || true
"$GODOT_BIN" --headless --path . -s addons/gut/gut_cmdln.gd -gexit
