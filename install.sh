#!/usr/bin/env bash
current_dir=$(dirname "$0")
config_dir=$HOME/.config/terminator/
echo "This script will install dracula color theme to Terminator."
echo "This will replace the current terminator config file"
function copy_config() {
    echo "Applying Dracula theme..."
    echo "Copying config file to ~/.config/terminator"
    mkdir -p $config_dir
    cp -rf  $current_dir/config/config $config_dir
    echo "terminator config updated!"
    echo "If you want to edit config, edit ~/.config/terminator/config file"
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

