#!/usr/bin/env bash

if [[ -z "$1" ]]; then
    echo 'fuck you'
    exit 1
fi

case "$1" in
    f)
        platform="curseforge"
        ;;
    *)
        platform="modrinth"
        ;;
esac

if [[ -z "$2" ]]; then
    echo "Please provide a mod name/slug/url to download from"
    exit 1
fi
packwiz "$platform" add "$2"
res=$()
echo "$res"
