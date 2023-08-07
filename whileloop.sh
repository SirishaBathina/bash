#!/bin/bash

echo "Enter lines of text. Type 'stop' to exit."

while true; do
    read input
    if [ "$input" = "stop" ]; then
        break
    fi
    echo "You entered: $input"
done

echo "Exiting the loop."
