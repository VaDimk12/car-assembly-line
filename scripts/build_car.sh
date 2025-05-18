#!/usr/bin/env bash
set -euo pipefail

echo "🔧 Building car..."
mkdir -p build
{
  echo "Car Parts List:"
  echo "- Body"
  echo "- Engine" 
  echo "- Wheels"
  echo "- Lights"
  echo "- Transmission"
} > build/car_parts.txt

echo "✅ Build complete. Parts list:"
cat build/car_parts.txt