#!/bin/bash

WEBSITES=("https://google.com" "https://facebook.com" "https://twitter.com")

LOGS_FILES="website_status.log"

> "$LOGS_FILES"

for site in "${WEBSITES[@]}"; do
    status_code=$(curl -o /dev/null -s -w "%{http_code}" "$site")
    if [ "$status_code" -eq 200 ]; then
        echo "$site is UP" >> "$LOGS_FILES"
    else
        echo "$site is DOWN" >> "$LOGS_FILES"
    fi
done

echo "The results have been saved to the $LOGS_FILES file."