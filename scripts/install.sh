#!/bin/bash
FONT_DIR="/Library/Fonts"
TMP_DIR="/tmp/poppins-fonts"

mkdir -p "$TMP_DIR"

FONT_URLS=(
"https://github.com/FKhan706/poppins-intune/raw/refs/heads/main/fonts/Poppins-Black.ttf"
"https://github.com/FKhan706/poppins-intune/raw/refs/heads/main/fonts/Poppins-Bold.ttf"
# add the rest of the 18 URLs here
)

for url in "${FONT_URLS[@]}"; do
    curl -s -L -o "$TMP_DIR/$(basename $url)" "$url"
done

for font in "$TMP_DIR"/*.ttf; do
    cp "$font" "$FONT_DIR/"
    chmod 644 "$FONT_DIR/$(basename $font)"
    chown root:wheel "$FONT_DIR/$(basename $font)"
done

rm -rf "$TMP_DIR"
echo "Poppins fonts installed successfully."
exit 0
