#!/bin/bash
FONT_DST="/Library/Fonts"

FONT_FILES=(
"Poppins-Black.ttf"
"Poppins-BlackItalic.ttf"
"Poppins-Bold.ttf"
# ... all 18 font names
)

for font in "${FONT_FILES[@]}"; do
    if [ ! -f "$FONT_DST/$font" ]; then
        exit 1   # font missing
    fi
done

exit 0   # all fonts installed
