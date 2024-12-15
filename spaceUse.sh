#!/bin/bash

# Counter 
counter=1

# Loop indefinitely
while true; do
    # Create a string of 5000 "A" characters
    string=$(printf 'A%.0s' {1..5000})

    # Encode in base64
    encoded_string=$(echo -n "$string" | base64)

    # Save to file
    echo "$encoded_string" > "file${counter}.txt"

    # Increment counter
    ((counter++))
done
