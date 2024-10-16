#!/bin/bash

# Download the Python script from the provided link
wget -O pairip.py https://pixeldrain.com/api/file/1CrGiM6H

# Automating first confirmation as 'yes'
echo "Do you want to continue using the script? (y/n) => y"

# Check the file type
filename=$1  # The filename will be passed as an argument

# Automating second confirmation depending on the file type
if [[ "$filename" == *.apks || "$filename" == *.xapk || "$filename" == *.apkm ]]; then
  echo "Would you like to merge? (y/n) => y"
else
  echo "Would you like to merge? (y/n) => (skipped)"
fi

# Automating third confirmation as 'no'
echo "Want to join channel (Press Enter to skip) (y/n) => n"

# Execute the downloaded Python script
python3 pairip.py
