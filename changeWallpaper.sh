#!/bin/bash
#script sencillo para cambiar automaticamente el fondo de pantalla en bspwm utilizando nitrogen

#guardar en una variable la ruta en donde se encuentrar los wallpapers
path=$HOME/wallpapers

carpetaWallpapers=$(ls -1 "$path")

declare -a wallpapers=()

for wallpaper in $carpetaWallpapers; do
    wallpapers+=("$wallpaper")
done

tamanio=${#wallpapers[@]}

indice=$((RANDOM % "$tamanio"))
indice=("$indice" + 1)

wallpaper=$(echo "${wallpapers["$indice"]}" | shuf -n 1)

nitrogen --set-scaled "$path"/"$wallpaper""
