#!/bin/bash

ins_path=/usr/bin
bin_name=kvmgr
red='\033[0;31m\033[1m'
green='\033[0;32m\033[1m'
yellow='\033[0;33m\033[1m'
red() {
    echo -e "${red}$@${end}"
}

yellow() {
    echo -e "${yellow}$@${end}"
}
green() {
    echo -e "${green}$@${end}"
}
if [[ $UID -ne 0 ]]; then
    red "Installation needs sudo user or root!"
    exit
fi

checkf=1
if [[ -f $ins_path/$bin_name ]]; then
    old=`md5sum /usr/bin/$bin_name | awk '{print $1}'`;
    new=`md5sum $PWD/$bin_name | awk '{print $1}'`
    checkf=0
fi

if [[ $checkf -eq 0 ]]; then
    if [[ $old = $new ]]; then
        yellow "$bin_name is already installed and is in the latest version!"
    else
        cp $PWD/$bin_name $ins_path >/dev/null >&1
        if [[ $? -eq 0 ]]; then
            green "Updated KVM Manager successfully!"
        else
            red "Failed to update KVM Manager!"
        fi
    fi
else
    cp $PWD/$bin_name $ins_path >/dev/null >&1
    if [[ $? -eq 0 ]]; then
        green "Installed KVM Manager successfully!"
    else
        red "Failed to install KVM Manager!"
    fi
fi
    