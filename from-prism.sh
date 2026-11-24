#!/usr/bin/env bash

while IFS= read -r -u 3 -d '' file; do
    nodir=${file#mods/}
    noext=${nodir%.pw.toml}

    if rg -q 'modrinth' "$file"; then
        echo "m $noext"
        packwiz modrinth add "$noext"
    elif rg -q 'curseforge' "$file"; then
        rg 'name' "$file"
        packwiz --yes curseforge add "$noext"
    fi
done 3< <(rg -l0 'prism' mods/)
