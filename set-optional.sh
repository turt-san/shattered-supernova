#!/bin/env bash

file="$1"

if ! [[ -n "$1" && -f "$file" ]]; then
    echo "Choose a file to set as optional"
    exit 1
fi

if rg -q "optional" "$file"; then
    echo "Mod already marked as optional"
    exit 1
fi

cat <<EOF >> "$file"

[option]
optional = true
default = false
description = "$2"
EOF

echo "$file succesfully set as optional with description set to \"$2\""
