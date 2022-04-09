#!/bin/bash

error() { \
    clear; printf "ERROR:\\n%s\\n" "$1" >&2; exit 1;
}

welcomeEn() { \
if [[ "$(id -u)" = 0 ]]; then
  echo 'you are running the script as root'
fi
echo '###################################################################################'
echo 'this script wil install al the packages i use it wil also ad my repo to pacman.comf.'
echo ' lets get started with the dependecies. '
echo '###################################################################################'
# install dialog

sudo pacman --noconfirm --needed -Syu dialog
sleep 5
}
welcomeEn || error 'error while syncing repos '

informEn() { \


dialog --title 'sure?' --msgbox 'this script will install my software on your system and ad my repo to pacmasn .conf it wil also install my desktop envoirement and dot files. ' 10 50
dialog --title 'stay with your computer' --msgbox ' stay with your computer while this script is running you wil be asked for you sudo password sometimes. ' 10 50
dialog --title 'check check!!' --msgbox 'it is not recomended to run this schript as root. But is your own choiche I am not going to check it for you. ' 10 50


}
informEn  || error 'user choose to exit'

LastEn() { \

dialog --title 'wip' --msgbox 'this script is work in progres there is no suport for it right now and run it is ad your own risk.' 10 50
dialog --title 'last chanche!!' --yes-label 'start install' --no-label 'exit'  --yesno 'are you usre you want to do this? ' 10 50 || { clear; exit 1; }

}
LastEn || error 'user chose to exit'

echo
clear
echo 'log'
