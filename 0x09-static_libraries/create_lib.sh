#!/bin/bash

# This is a bash script example that compiles source code files into object files and adds them into a static library

# Compile all source code files in the current directory into object files
for source_file in *.c; do
  object_file="${source_file%.c}.o"
  gcc -c "$source_file" -o "$object_file"
  echo "Compiled $source_file into $object_file"
done

# Create a static library using ar command
ar rcs libmy.a *.o

# Print a message after the library is created
echo "Static library libmy.a created successfully."


