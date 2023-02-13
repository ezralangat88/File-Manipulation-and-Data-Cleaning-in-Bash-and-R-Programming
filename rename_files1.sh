#!/bin/bash

cd /home/ubtez/Music/Audio/23

# Loop through each file that starts with "y2mate.com" and ends with ".mp3"
for file in y2mate.com*.mp4; do
    # Remove the "y2mate.com" prefix from the filename
    new_name="${file#y2mate.com}"
    # Trim leading and trailing spaces and special characters from the new name
    new_name="$(echo -n "$new_name" | sed -e 's/^[^[:alnum:]]*//' -e 's/[^[:alnum:]]*$//')"
    # Rename the file with the new name
    mv -- "$file" "${new_name}"
done


# The sed command is used to trim leading and trailing spaces and special characters from the new filename. 
# It uses the regular expression [^[:alnum:]] to match any character that is not a letter or a digit. 
# The ^ and $ symbols are used to match the beginning and end of the string, respectively.