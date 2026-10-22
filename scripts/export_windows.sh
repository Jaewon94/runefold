#!/usr/bin/env bash
# Export the Windows exe to build/Runefold.exe (release). Requires the matching export templates
# (Godot 4.7.2 -> ~/Library/Application Support/Godot/export_templates/4.7.2.stable on macOS).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
GODOT_BIN="${GODOT_BIN:-$HOME/tools/godot/4.7.2/Godot.app/Contents/MacOS/Godot}"
[ -x "$GODOT_BIN" ] || { echo "Godot binary not found: $GODOT_BIN" >&2; exit 2; }
mkdir -p "$ROOT/build"
cd "$ROOT/godot"
"$GODOT_BIN" --headless --path . --import >/dev/null 2>&1 || true
"$GODOT_BIN" --headless --path . --export-release "Windows Desktop"
ls -l "$ROOT/build/Runefold.exe"
