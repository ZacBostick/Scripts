#!/bin/bash

# Path to the sites file relative to the script location
SITES_FILE="$(dirname "$0")/../sites_list.txt"

# Read sites from the file
SITES=$(cat "$SITES_FILE")

# Loop through all sites and print their HTTP status codes, following redirects
for SITE in $SITES; do
  echo "Checking $SITE..."
  STATUS=$(curl -o /dev/null -L -s -w "%{http_code}\n" "$SITE")
  if [ "$STATUS" -eq 200 ]; then
    echo "Site $SITE is UP."
  else
    echo "Site $SITE might be DOWN or experiencing issues. Status code: $STATUS"
  fi
done
