#!/bin/bash

welcomeNl() \ {
echo '#################################################################################################################'
echo  'dit script zal alle packages die ik dagelijks gebruik instaleren ook zal het mijn repo toevoegen aan pacman.conf.  '
echo 'laten we beginnen met alles wat we nodig hebben voor de installatie.'
echo '#################################################################################################################'

# install dialog

pacman -Sy --noconfirm --needed
}
welcomeNl || error 'error while syncing repos '
