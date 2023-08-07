#!/bin/bash
read -p "Enter person's age: " age
read -p "Enter person's gender (male/female): " gender
honorific=""
if [ "$age" -lt 18 ]; then
    honorific="Young"
elif [ "$age" -ge 18 ] && [ "$age" -lt 50 ]; then
    if [ "$gender" == "male" ]; then
        honorific="Mr."
    else
        honorific="Ms."
    fi
else
    if [ "$gender" == "male" ]; then
        honorific="Sir"
    else
        honorific="Madam"
    fi
fi
echo "Dear $honorific, ..."
