#!/bin/bash

# Get the link
if [ -z "$1" ]; then
    echo "Please provide the youtube link"
    exit 1
fi

input_link="$1"

yt-dlp --no-cache-dir --no-call-home -o - "$input_link" | mpv -


