#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <string_variable> <float_variable>"
    exit 1
fi
string_variable="$1"
float_variable="$2"
formatted_string="String variable: $string_variable, Float variable: $float_variable"
echo "$formatted_string"
