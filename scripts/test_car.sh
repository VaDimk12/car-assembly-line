#!/usr/bin/env bash
set -euo pipefail

echo "🧪 Starting car parts test..."
echo "----------------------------"

# Читаємо файл у змінну для багаторазового використання
car_parts=$(cat build/car_parts.txt)
echo "Current parts list:"
echo "$car_parts"
echo "----------------------------"

# Масив необхідних деталей
required_parts=("Body" "Engine" "Wheels" "Lights" "Transmission")

for part in "${required_parts[@]}"; do
  if echo "$car_parts" | grep -q -e "- $part"; then
    echo "✔ Found: $part"
  else
    echo "❌ Missing: $part"
    echo "----------------------------"
    echo "Full parts list:"
    echo "$car_parts"
    exit 1
  fi
done

echo "----------------------------"
echo "✅ All parts verified successfully!"
exit 0