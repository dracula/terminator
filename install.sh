#!/usr/bin/env bash

current_dir=$(dirname "$0")
config_dir="$HOME/.config/terminator"

echo "[II] This script will install dracula color theme to Terminator."
echo "[WW] This will replace the current terminator config file after backing it up"
echo "[WW] In order to work dracula theme needs Anonymous Pro font to work"

function copy_config() {
    echo "[II] Applying Dracula theme..."

    if [ -f $config_dir/config ]; then
      echo "[II] Backing up old terminator config to $config_dir/config.bkp"
      cp $config_dir/config $config_dir/config.bkp
    else
      mkdir -p $config_dir
    fi

    echo "[II] Copying config file to ~/.config/terminator"
    cp -rf  $current_dir/config/config $config_dir/

    echo "[II] terminator config updated!"
    echo "[II] If you want to edit config, edit $config_dir/config file"
}

while true; do
read -p "Do you wish to continue? " yn
    case $yn in
        [Yy]* )
            copy_config
            break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
