#!/bin/bash


echo '
  _____  ____  ___ ___      ____   ___   _____ ______      ____  ____   _____ ______   ____  _      _
 / ___/ /    ||   |   |    |    \ /   \ / ___/|      |    |    ||    \ / ___/|      | /    || |    | |
(   \_ |  o  || _   _ |    |  o  )     (   \_ |      |     |  | |  _  (   \_ |      ||  o  || |    | |
 \__  ||     ||  \_/  |    |   _/|  O  |\__  ||_|  |_|     |  | |  |  |\__  ||_|  |_||     || |___ | |___
 /  \ ||  _  ||   |   |    |  |  |     |/  \ |  |  |       |  | |  |  |/  \ |  |  |  |  _  ||     ||     |
 \    ||  |  ||   |   |    |  |  |     |\    |  |  |       |  | |  |  |\    |  |  |  |  |  ||     ||     |
  \___||__|__||___|___|    |__|   \___/  \___|  |__|      |____||__|__| \___|  |__|  |__|__||_____||_____|


'

  language=false
  while [[ $language = false ]]; do
    read -p 'ente language: ' language

    if [[ $language = 'en' ]]; then
      source installEn.sh
    elif [[ $language = 'nl' ]]; then
      source installNl.sh
    else
      language=false

    fi
  done
