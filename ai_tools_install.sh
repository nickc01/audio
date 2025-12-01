#!/bin/bash
# Install torchaudio in editable mode (requires --no-build-isolation)

set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing torchaudio in editable mode..."
cd "$SCRIPT_DIR"

# Check if setup.py or pyproject.toml exists
if [[ -f "setup.py" ]] || [[ -f "pyproject.toml" ]]; then
    pip install -e . --no-build-isolation
else
    echo "Warning: No setup.py or pyproject.toml found in $SCRIPT_DIR"
    echo "Skipping installation for torchaudio"
    exit 1
fi

echo "✓ torchaudio installed successfully"
