#!/bin/bash

echo -e "\e[41mPwnBox Install\e[0m"
echo -e "\e[41mBased off xct/clean and theGuildHall/pwnbox\e[0m"
echo -e "\e[41mUpdated 09.02.2021 \e[24m"
echo -e "\e[41mBy:Christopher Soehnlein | https://IslandDog.ky \e[0m"
read -s -n 1 -p "Press ANY key to continue."

mkdir -p ~/.config/i3
mkdir -p ~/.config/compton
mkdir -p ~/.config/rofi
mkdir -p ~/.config/alacritty
mkdir -p ~/.wallpaper
sudo cp .config/i3/config ~/.config/i3/config
sudo cp .config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
sudo cp .config/i3/i3blocks.conf ~/.config/i3/i3blocks.conf
sudo cp .config/compton/compton.conf ~/.config/compton/compton.conf
sudo cp .config/rofi/config ~/.config/rofi/config
sudo cp .fehbg ~/.fehbg
sudo cp .config/i3/clipboard_fix.sh ~/.config/i3/clipboard_fix.sh
sudo mv vpnbash.sh vpnserver.sh /opt/
sudo chmod +x /opt/vpn*.sh
sudo mv htb.jpg htb2.jpg ~/.wallpaper

sudo apt-get install -y arandr flameshot arc-theme feh i3blocks i3status i3 i3-wm lxappearance python3-pip rofi unclutter cargo compton papirus-icon-theme imagemagick
sudo apt-get install -y libxcb-shape0-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev autoconf meson
sudo apt-get install -y libxcb-render-util0-dev libxcb-shape0-dev libxcb-xfixes0-dev 
sudo apt-get install -y onedrive enum4linux nbtscan nikto nmap oscanner smbclient smbmap smtp-user-enum snmp sslscan whatweb
curl https://sh.rustup.rs -sSf | sh
cargo install rustscan feroxbuster
echo -e "\e[41mNOTICE\e[0m"
echo "Make sure to update your cargo directory in PATH if you are using my .zshrc config"
read -s -n 1 -p "Press ANY key to continue."

cd /opt/
sudo git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite peass
sudo git clone https://github.com/rebootuser/LinEnum linenum
sudo git clone https://github.com/M4ximuss/Powerless powerless
sudo git clone https://github.com/r3motecontrol/Ghostpack-CompiledBinaries ghost
sudo git clone https://github.com/ivan-sincek/php-reverse-shell.git webshells
sudo git clone https://github.com/samratashok/nishang.git nishang
sudo git clone https://github.com/danielmiessler/SecLists.git seclists
sudo git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git
sudo mv zsh-autocomplete /usr/share/
sudo git clone https://github.com/jwilm/alacritty
cd alacritty
cargo build --release && sudo cp target/release/alacritty /usr/local/bin
cd ..

sudo git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps && mkdir -p build && cd build && meson ..
ninja
sudo ninja install
pip3 install pywal

echo -e "\e[41mNOTICE\e[0m"
echo "After the script is done reboot and select i3 (top right corner) on the login screen. Then open a terminal (hotkey below) and read the rest of the README on GitHub for further configuration options."
echo "Use multipull (if using my .zshrc) or command 'cd /opt && find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;' to update all repositories"
read -s -n 1 -p "Press ANY key to continue."
sudo reboot
