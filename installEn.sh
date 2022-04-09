#!/bin/bash

welcomeEn() { \
echo '###################################################################################'
echo 'this script wil install al the packages i use it wil also ad my repo to pacman.comf.'
echo ' lets get started with the dependecies. '
echo '###################################################################################'

# install dialog

pacman -Sy --noconfirm --needed
}
welcomeEn error | 'error while syncing repos '

informEn() { \

  dialog --title 'sure?' --msgbox 'this script will install my software on your system and ad my repo to pacmasn .conf it wil also install my desktop envoirement and dot files. ' 10 50
  dialog --title 'stay with your computer' --msgbox ' stay with your computer while this script is running you wil be asked for you sudo password sometimes. ' 10 50



}
informEn error || 'user chose to exit'
