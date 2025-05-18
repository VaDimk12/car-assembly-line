#!/usr/bin/env bash
set -euo pipefail

declare -a REQUIRED_PARTS=("Body" "Engine" "Wheels" "Lights" "Transmission")

echo "🧪 Testing car components..."
echo "-----------------------------"

for part in "${REQUIRED_PARTS[@]}"; do
  if cat build/car_parts.txt | grep -q -- "- $part"; then
    echo "✔ Found $part"
  else
    echo "❌ ERROR: Missing $part!"
    echo "Current parts list:"
    cat build/car_parts.txt
    exit 1
  fi
done

echo "-----------------------------"
echo "✅ All parts verified successfully!"
exit 0