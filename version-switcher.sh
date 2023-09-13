#!/bin/bash

echo "This script is used for me (firebadnofire) to quickly change software versions"
echo "Do not use this if you are not developing this software and implimenting changes that require a verion update"
read -p "Do you want to continue? (yes/no): " response

if [ "$response" = "yes" ]; then
  echo "Continuing..."
elif [ "$response" = "no" ]; then
  echo "Exiting..."
  exit 0
else
  echo "Invalid input. Please enter 'yes' or 'no'."
fi

read -p "Enter the current version: " current_version

read -p "Enter the new version: " new_version

files="./version.txt ./scripts/Music  ./scripts/Video  ./scripts/yt-gui  ./scripts/yt-music  ./scripts/yt-video"

for file in $files; do
    if [[ -f "$file" ]]; then
        sed -i "s/version=$current_version/version=$new_version/g" "$file"
        echo "Updated $file"
    else
        echo "Warning: $file not found or is not a regular file. Skipping."
    fi
done

echo "Version update complete."
