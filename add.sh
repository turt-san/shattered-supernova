if [[ -z "$1" ]]; then
    echo 'fuck you'
    exit 1
fi

if [[ -z "$2" ]]; then
    packwiz modrinth add $1
else
    packwiz curseforge add $2
fi
