#!/bin/bash

error() { \
    clear; printf "ERROR:\\n%s\\n" "$1" >&2; exit 1;
}


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
echo 'laten we beginnen met je taal/lets start with you language'
echo
echo 'Nederlands en Engels worden ondersteund/Dutch and Englisch are suported.'
echo 'je kunt dus nl of en invullen/so you can enter en or nl.'
language=false
lError=0
while [[ $language = false ]]; do
  read -p 'enter language/vul taal in: ' language
  echo

  if [[ $language = 'en' ]]; then
    source installEn.sh
  elif [[ $language = 'nl' ]]; then
    source installNl.sh
  else
    language=false
    ((lError=lError+1))

    echo 'the language you enterd is not suported please try again.'
    echo 'de taal die je invoerde word niet ondersteunt probeer het opnieuw.'
    echo
    if [[ $lError -gt 10 ]]; then
      clear
      exit 1
    fi



  fi
done

}

start || error 'error while setting up'
