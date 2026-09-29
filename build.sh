#!/bin/sh
# Builds the catalog PDF with headless Chrome.
# Needs internet for Poppins / Cormorant Garamond from Google Fonts.
set -e

CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
cd "$(dirname "$0")"

"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer \
  --virtual-time-budget=8000 \
  --print-to-pdf="Sandras-Bake-House-Wholesale-2026.pdf" \
  "file://$PWD/menu.html"

echo "Built Sandras-Bake-House-Wholesale-2026.pdf"
