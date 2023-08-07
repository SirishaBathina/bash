#!/bin/bash
declare -A my_dict=(
  [key1]="value1"
  [key2]="value2"
  [key3]="value3"
)
for key in "${!my_dict[@]}"; do
    value="${my_dict[$key]}"
    echo "Key: $key, Value: $value"
done
