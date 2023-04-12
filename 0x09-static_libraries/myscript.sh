#!/bin/bash

# This is a bash script example that creates empty files based on filenames stored in a file

# Check if the file.txt exists
if [ ! -e "file.txt" ]; then
  echo "File file.txt does not exist."
  exit 1
fi

# Read each line in file.txt and create empty files
while read -r filename; do
  # Use touch command to create an empty file with the filename
  touch "$filename"
  # Print a message for each file created
  echo "Created file: $filename"
done < file.txt

# Print a message after all files are created
echo "All files created successfully."


