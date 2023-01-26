#!/bin/bash

for file in *; do
  if [ -f "$file" ]; then
    extension="${file##*.}"
    if [ "$extension" != "sh" ]; then
      if [ ! -d "$extension" ]; then
        mkdir "$extension"
      fi
      mv "$file" "$extension"
    fi
  fi
done

