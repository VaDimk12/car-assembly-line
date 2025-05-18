#!/bin/bash
echo "🔧 Building car..."
mkdir -p build
echo "Car Parts List:" > build/car_parts.txt
echo "- Body" >> build/car_parts.txt
echo "- Engine" >> build/car_parts.txt
echo "- Wheels" >> build/car_parts.txt
cat build/car_parts.txt