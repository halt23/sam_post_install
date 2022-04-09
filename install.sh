#!/bin/bash

start() { \
clear
language=false
echo '
  _____  ____  ___ ___      ____   ___   _____ ______      ____  ____   _____ ______   ____  _      _
 / ___/ /    ||   |   |    |    \ /   \ / ___/|      |    |    ||    \ / ___/|      | /    || |    | |
(   \_ |  o  || _   _ |    |  o  )     (   \_ |      |     |  | |  _  (   \_ |      ||  o  || |    | |
 \__  ||     ||  \_/  |    |   _/|  O  |\__  ||_|  |_|     |  | |  |  |\__  ||_|  |_||     || |___ | |___
 /  \ ||  _  ||   |   |    |  |  |     |/  \ |  |  |       |  | |  |  |/  \ |  |  |  |  _  ||     ||     |
 \    ||  |  ||   |   |    |  |  |     |\    |  |  |       |  | |  |  |\    |  |  |  |  |  ||     ||     |
  \___||__|__||___|___|    |__|   \___/  \___|  |__|      |____||__|__| \___|  |__|  |__|__||_____||_____|


'
echo ' laten we beginnen met je taal/lets start with you language'
echo
echo 'Nederlands en Engels worden ondersteund/Dutch and Englisch are suported.'
echo 'je kunt dus nl of en invullen/so you can enter en or nl.'
while [[ $language = false ]]; do
  read -p 'enter language/vul taal in: ' language
  echo

<<<<<<< HEAD
  if [[ $language = 'en' ]]; then
    source installEn.sh
  elif [[ $language = 'nl' ]]; then
    source installNl.sh
  else
    echo 'the language you enterd is not suported please try again.'
    echo 'de taal die je invoerde word niet ondersteunt probeerd het opnieuw.'
    echo
    language=false
=======
  language=false
  while [[ $language = false ]]; do
    read -p 'enter language: ' language
>>>>>>> bdcd3d09027fc022c5c221581bb29efdf434c3cc



  fi
done

}

start error || 'error while setting up'
