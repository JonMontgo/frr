#!/bin/bash
if [[ $INSTALL_PATH = "" ]]; then
  INSTALL_PATH="/usr/local/bin"
else
  INSTALL_PATH=$INSTALL_PATH
fi

echo "Press y to install frr (fuzzy recurvive replace) into $INSTALL_PATH"
while : ; do
  read -n 1 k <&1
  if [[ $k = n ]] ; then
    break;
  elif [[ $k = y ]] ; then
    echo ""
    echo "installing into $INSTALL_PATH"
    sudo cp frr $INSTALL_PATH
    sudo chmod +x "$INSTALL_PATH"/frr
    break;
  else
    echo ""
    echo "Please type either y or n."
  fi
done
