#!/bin/bash

mkdir -p what6/is4
echo "#!/bin/bash" > "what6/is4/the4.sh"
echo "git clone https://github.com/Yorkulov/image.git > /dev/null 2>&1" >> "what6/is4/the4.sh"

for i in $(seq 0 10)
do
    mkdir "what$i" 2>/dev/null
    for j in $(seq 0 10)
    do
        mkdir "what$i/is$j" 2>/dev/null
        if ! [ "$i" -eq 6 ] || ! [ "$j" -eq 4 ];
        then
            echo "#!/bin/bash" > "what$i/is$j/the$j.sh"
            echo "Apart from counting words and characters, our online editorrrrrr" >> "what$i/is$j/the$j.sh"
        fi
    done
done

