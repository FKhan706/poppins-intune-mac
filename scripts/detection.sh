#!/bin/bash
FONT_DIR="/Library/Fonts"

FONT_FILES=(
"Poppins-Black.ttf"
"Poppins-Bold.ttf"
# add all 18 font names here
)

for font in "${FONT_FILES[@]}"; do
    if [ ! -f "$FONT_DIR/$font" ]; then
        exit 1
    fi
done

exit 0
