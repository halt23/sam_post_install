#!/bin/bash

error() { \
    clear; printf "ERROR:\\n%s\\n" "$1" >&2; exit 1;
}

welkomNl() { \
if [[ "$(id -u)" = 0 ]]; then
echo 'je voert het script uit als root'
fi
echo '#################################################################################################################'
echo  'dit script zal alle packages die ik dagelijks gebruik instaleren ook zal het mijn repo toevoegen aan pacman.conf.  '
echo 'laten we beginnen met alles wat we nodig hebben voor de installatie.'
echo '#################################################################################################################'
# dialog en update

sudo pacman --noconfirm --needed -Syu dialog
sleep 5

}
welkomNl || error 'error tijdens synchroniseren repos.'

InfoNl() { \

dialog --title 'weet je het zeker?' --msgbox 'dit script zal al mijn packages instaleren. Het zal ook mijn repo toevoegen aan pacman.conf. ' 10 50
dialog --title 'blijf bij je pc!!' --msgbox ' blijf in de buurt van je computer je zult soms gevraagd worden om je wachtwoord als je het script niet als root draait.  ' 10 50
dialog --title 'check check dubbel check.' --msgbox 'het word niet aangeraden dit script uit te voeren als root. Ik ga niet checken of je root bent dat is je eigen verantwoording. ' 10 50


}

InfoNl || error 'de gebruiker sloot het script af.'

LastNl() { \
dialog --title 'wip' --msgbox 'dit script is nog lang niet af en het uitvoeren is op eigen risico' 10 50
dialog --title 'last chanche!!' --yes-label 'start' --no-label 'afsluiten'  --yesno 'weet je het zeker?' 10 50 || { clear; exit 1; }

}
LastNl || error 'de gebruiker sloot het script af.'
echo ''
