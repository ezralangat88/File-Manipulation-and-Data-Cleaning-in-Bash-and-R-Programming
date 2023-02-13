#!/bin/bash

cd /home/ubtez/Music/Audio/23

# Loop through each file that starts with "y2mate.com" and ends with ".mp3"
for file in y2mate.com*.mp3; do
    # Remove the "y2mate.com" prefix from the filename
    new_name="${file#y2mate.com}"
    # Trim leading and trailing spaces and special characters from the new name
    new_name="$(echo -n "$new_name" | sed -e 's/^[^[:alnum:]]*//' -e 's/[^[:alnum:]]*$//')"
    # Rename the file with the new name
    mv -- "$file" "${new_name}"
done

# Loop through each file that starts with "y2mate.com" and ends with ".mp4"
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


# echo -n "$new_name" - This command prints the value of the new_name variable to the standard output, without a trailing newline character. The output is then piped (|) to the sed command for further processing.

# sed -e 's/^[^[:alnum:]]*//' -e 's/[^[:alnum:]]*$//' - This is a sed command that removes leading and trailing non-alphanumeric characters from the input string. Here's what the command does:

# s - This is the sed command for search and replace.
# ^ - This matches the start of the string.
# [^[:alnum:]] - This matches any non-alphanumeric character.
# * - This matches zero or more occurrences of the previous character or group.
# $ - This matches the end of the string.
# So, the first s command (s/^[^[:alnum:]]*//) removes any leading non-alphanumeric characters, and the second s command (s/[^[:alnum:]]*$//) removes any trailing non-alphanumeric characters.

# new_name= - This assigns the output of the echo and sed commands to the new_name variable, effectively updating the filename with the trimmed version.

# So, overall, this line takes the original filename stored in the new_name variable, removes any leading and trailing non-alphanumeric characters, and stores the resulting trimmed filename back in the new_name variable. This ensures that the filename is clean and does not contain any unwanted characters that may cause issues when renaming the file.