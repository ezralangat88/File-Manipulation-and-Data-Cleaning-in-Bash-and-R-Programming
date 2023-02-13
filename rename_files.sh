#!/bin/bash

# FOR LOOP TO RENAME FILES
FILES=$(ls y2mate.com*.mp4)

echo $FILES

# NEW="ew"
for FILE in $FILES  
  do
    echo "Renaming $FILE to ${FILE#y2mate.com}"
    mv -- "$FILE" "${FILE#y2mate.com}"
done

