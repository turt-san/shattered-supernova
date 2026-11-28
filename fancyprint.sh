#!/usr/bin/env bash

shopt -s extglob

flags="${1#-}"
shift

esc=$'\x1b[38;5'

declare -A map
map["a"]="$esc;40m+"
map["r"]="$esc;196m-"

map["m"]="$esc;2m@ modrinth"
map["f"]="$esc;166m@ curseforge"

map["s"]="$esc;124m  server"
map["c"]="$esc;27m  client"
map["b"]="$esc;54m   both "

map["o"]="$esc;204moptional"
map["x"]=""

what=${map["${flags:0:1}"]}
name="$1"
comment="$2"
provider=${map["${flags:1:1}"]}
where=${map["${flags:2:1}"]}
maybe=${map["${flags:3:1}"]}

res=$(printf "%s %-30s %-21s %18s %21s" "$what" "$name" "$provider" "$where" "$maybe")

printf "%s" "${res%%+( )}"
