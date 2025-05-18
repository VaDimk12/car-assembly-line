#!/usr/bin/env bash
set -euo pipefail

echo "🧪 Starting car parts test..."
echo "----------------------------"

# Перевірка наявності файлу
if [ ! -f "build/car_parts.txt" ]; then
  echo "❌ Error: car_parts.txt not found!"
  echo "Current directory: $(pwd)"
  ls -la build/ || echo "Build directory missing"
  exit 1
fi

car_parts=$(cat build/car_parts.txt)
echo "Current parts list:"
echo "$car_parts"
echo "----------------------------"

required_parts=("Body" "Engine" "Wheels" "Lights" "Transmission")
all_parts_present=true

for part in "${required_parts[@]}"; do
  if echo "$car_parts" | grep -q -e "- $part"; then
    echo "✔ Found: $part"
  else
    echo "❌ Missing: $part"
    all_parts_present=false
  fi
done

echo "----------------------------"
if [ "$all_parts_present" = true ]; then
  echo "✅ All parts verified successfully!"
  exit 0
else
  echo "❌ Some parts are missing!"
  echo "Full parts list:"
  echo "$car_parts"
  exit 1
fi