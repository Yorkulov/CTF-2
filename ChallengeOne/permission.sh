#!/bin/bash

# Find va chmod yordamida tizimdagi barcha fayllarga faqat o'qish ruxsatini berish

# Joriy direktoriyadan boshlab barcha fayllarni topish
find ./ -type f 2>/dev/null | while read -r file; do
    # Fayllarga faqat o'qish ruxsatini belgilash
    chmod 0711 "$file"
done
