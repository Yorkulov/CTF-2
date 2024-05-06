#!/bin/bash

flag="password-second-part: in South America?"

declare -A questions_answers=(
    ["Fayl tizimidagi bo'sh joyni tekshirish uchun qaysi buyruq ishlatiladi?"]="df"
    ["Jurnal fayllarini tahlil qilish uchun qaysi buyruq ishlatiladi?"]="journalctl"
    ["Tarmoq interfeyslarini boshqarish uchun qaysi buyruq ishlatiladi?"]="ifconfig"
    ["Linux tizimida yangi foydalanuvchi yaratish uchun qaysi buyruq ishlatiladi?"]="useradd"
    ["Foydalanuvchi parolini o'zgartirish uchun qaysi buyruq ishlatiladi?"]="passwd"
    ["Linux tizimidagi barcha jarayonlarni ko'rish uchun qaysi buyruq ishlatiladi?"]="ps"
    ["Fayl yoki katalog huquqlarini o'zgartirish uchun qaysi buyruq ishlatiladi?"]="chmod"
    ["Linux tizimida rejali vazifalarni boshqarish uchun qaysi vosita ishlatiladi?"]="crontab"
    ["Tarmoq ulanishlarini ko'rib chiqish uchun qaysi buyruq ishlatiladi?"]="netstat"
    ["Faylning turini aniqlash uchun qaysi buyruq ishlatiladi?"]="file"
)

count=0

for question in "${!questions_answers[@]}"; do
    echo "$question"
    read -p "Javobingizni kiriting: " user_answer
    if [[ "$user_answer" == "${questions_answers[$question]}" ]]; then
        echo "To'g'ri javob!"
        count=$((count + 1))
    else
        echo "Noto'g'ri javob."
    fi
    echo
done

if [[ $count -eq 9 ]]; then
    echo "Siz $count ta to'g'ri javob berdingiz!"
    echo "Flag: $flag"
else
    echo "Siz faqat $count ta to'g'ri javob berdingiz. 9 ta savolga javob bering."
fi
