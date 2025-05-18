#!/bin/bash
echo "🧪 Testing car..."
for part in Body Engine Wheels; do
  if ! grep -q "- $part" build/car_parts.txt; then
    echo "❌ Missing $part!"
    exit 1
  fi
done
echo "✅ All parts found!"