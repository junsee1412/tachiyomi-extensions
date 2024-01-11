#!/bin/bash

lspkg=$(jq '.[].pkg' index.json)
lsapk=$(jq '.[].apk' index.json)

for pkg in $lspkg
do
    pkg=$(echo $pkg | sed 's/\"//g')
    icon="icon/$pkg.png"
    curl -L -o $icon \
    https://raw.githubusercontent.com/ThePBone/tachiyomi-extensions-revived/repo/$icon
done

for apk in $lsapk
do
    apk=$(echo $apk | sed 's/\"//g')
    apk="apk/$apk"
    curl -L -o $apk \
    https://raw.githubusercontent.com/ThePBone/tachiyomi-extensions-revived/repo/$apk
done