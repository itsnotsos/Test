#!/bin/bash

# Ask for first confirmation
read -p "Do you want to continue using the script? (y/n) => " first_confirm
if [[ "$first_confirm" != "y" ]]; then
  echo "Exiting script..."
  exit 1
fi

# Check the file type
read -p "Enter the file name (with extension): " filename

# Ask for second confirmation only if it's a split APK file type
if [[ "$filename" == *.apks || "$filename" == *.xapk || "$filename" == *.apkm ]]; then
  read -p "Would you like to merge? (y/n) => " second_confirm
  if [[ "$second_confirm" != "y" ]]; then
    echo "Exiting script..."
    exit 1
  fi
fi

# Ask for third confirmation
read -p "Want to join channel (Press Enter to skip) (y/n) => " third_confirm
if [[ "$third_confirm" == "n" ]]; then
  echo "You chose not to join the channel."
fi

# Execute the Python script
python3 pairip.py
