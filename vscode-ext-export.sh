#!/bin/bash

echo "Setting vscode config..."

readonly OUT_SCRIPT_NAME=vscode-extensions.sh
code --list-extensions | sed -e 's/^/code --install-extension /' > $OUT_SCRIPT_NAME
chmod 700 $OUT_SCRIPT_NAME
less $OUT_SCRIPT_NAME
./$OUT_SCRIPT_NAME

echo "Done"

