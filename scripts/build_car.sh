#!/usr/bin/env bash
set -euo pipefail

echo "🔧 Building car..."
mkdir -p build || {
  echo "❌ Failed to create build directory"
  exit 1
}

{
  echo "Car Parts List:"
  echo "- Body"
  echo "- Engine" 
  echo "- Wheels"
  echo "- Lights"
  echo "- Transmission"
} > build/car_parts.txt || {
  echo "❌ Failed to create car_parts.txt"
  exit 1
}

echo "✅ Build complete. Parts list:"
cat build/car_parts.txt
exit 0