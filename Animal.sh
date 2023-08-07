#!/bin/bash
animal="cat"
case $animal in
    "dog")
        sound="Woof Woof!"
        ;;
    "cat")
        sound="Meow!"
        ;;
    "cow")
        sound="Moo!"
        ;;
    "duck")
        sound="Quack!"
        ;;
    *)
        sound="Unknown animal sound"
        ;;
esac
echo "The $animal says: $sound"
