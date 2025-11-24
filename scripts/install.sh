#!/bin/bash
FONT_SRC="$(dirname "$0")/../fonts"   # path to fonts folder relative to scripts folder
FONT_DST="/Library/Fonts"

# Copy all .ttf files to system fonts folder
for font in "$FONT_SRC"/*.ttf; do
    cp "$font" "$FONT_DST/"
    chmod 644 "$FONT_DST/$(basename $font)"
    chown root:wheel "$FONT_DST/$(basename $font)"
done

echo "Poppins fonts installed successfully."
exit 0
