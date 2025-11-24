#!/bin/bash
FONT_DST="/Library/Fonts"

FONT_FILES=(
"Poppins-Black.ttf"
"Poppins-BlackItalic.ttf"
"Poppins-Bold.ttf"
"Poppins-BoldItalic.ttf"
"Poppins-ExtraBold.ttf"
"Poppins-ExtraBoldItalic.ttf"
"Poppins-ExtraLight.ttf"
"Poppins-ExtraLightItalic.ttf"
"Poppins-Italic.ttf"
"Poppins-Light.ttf"
"Poppins-LightItalic.ttf"
"Poppins-Medium.ttf"
"Poppins-MediumItalic.ttf"
"Poppins-Regular.ttf"
"Poppins-SemiBold.ttf"
"Poppins-SemiBoldItalic.ttf"
"Poppins-Thin.ttf"
"Poppins-ThinItalic.ttf"
)

for font in "${FONT_FILES[@]}"; do
    if [ ! -f "$FONT_DST/$font" ]; then
        exit 1   # Font missing
    fi
done

exit 0   # All fonts installed
