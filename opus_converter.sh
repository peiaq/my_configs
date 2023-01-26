#!/bin/bash

# This script converts all audio files in a directory to the .opus format with a bitrate of 510 kbps, then deletes the original files

# Check if ffmpeg is installed
if ! command -v ffmpeg > /dev/null; then
    echo "ffmpeg not found. Please install ffmpeg before running this script."
    exit 1
fi

# Get the input directory path
if [ -z "$1" ]; then
    echo "Please provide the path to the input directory as the first argument."
    exit 1
fi
input_dir="$1"

# Find all audio files in the input directory
files=( "$input_dir"/* )

for file in "${files[@]}"; do
    # Check if the current file is an audio file
    if [[ $file =~ \.mp3$|\.flac$|\.wav$|\.aac$|\.ogg$|\.m4a$ ]]; then
        # Get the file name without the extension
        filename="${file%.*}"
        output_file="$filename.opus"

        # Convert the audio file to .opus format with a bitrate of 510 kbps
        ffmpeg -i "$file" -c:a libopus -b:a 510k "$output_file"

        # Delete the original audio file
        rm "$file"
    fi
done

echo "All audio files in the directory have been successfully converted to .opus with a bitrate of 510 kbps and the original files have been deleted."

