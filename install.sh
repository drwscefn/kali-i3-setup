#!/bin/bash

echo -e "\e[41mPwnBox Install\e[0m"
echo -e "\e[41mBased off xct/clean and theGuildHall/pwnbox\e[0m"
echo -e "\e[41mUpdated 01.04.2022 \e[24m"
echo -e "\e[41mBy:Christopher Soehnlein | https://IslandDog.ky \e[0m"
read -s -n 1 -p "Press ANY key to continue."

#KaliLinux New Installs
read -s -n 1 -p "Nano is about to launch, copy the following before proceeding with the install"
sudo nano /etc/apt/sources.list
echo -e "deb http://http.kali.org/kali kali main contrib non-free"
echo -e "deb-src http://http.kali.org/kali kali main contrib non-free"
echo -e "deb http://security.kali.org/kali-security kali/updates main contrib non-free"
echo -e "deb-src http://security.kali.org/kali-security kali/updates main contrib non-free"
read -s -n 1 -p "Confirm this has been copied before proceeding with the install."

sudo apt-get install build-essential
sudo apt-get install build-essential checkinstall
sudo apt-get install autoconf automake autotools-dev m4
sudo apt-get install libx11-dev
sudo apt-get install freeglut3-dev
sudo apt-get install -y arandr flameshot arc-theme feh i3blocks i3status i3 i3-wm lxappearance python3-pip rofi unclutter cargo compton papirus-icon-theme imagemagick
sudo apt-get install -y libxcb-shape0-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev autoconf meson
sudo apt-get install -y libxcb-render-util0-dev libxcb-shape0-dev libxcb-xfixes0-dev 
sudo apt-get install -y gobuster onedrive enum4linux nbtscan nikto nmap oscanner smbclient smbmap smtp-user-enum snmp sslscan whatweb

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

curl https://sh.rustup.rs -sSf | sh
cargo install rustscan feroxbuster
echo -e "\e[41mNOTICE\e[0m"
echo "Make sure to update your cargo directory in PATH if you are using my .zshrc config"
read -s -n 1 -p "Press ANY key to continue."
clear

cd /opt/
sudo git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite peass
sudo git clone https://github.com/rebootuser/LinEnum linenum
sudo git clone https://github.com/M4ximuss/Powerless powerless
sudo git clone https://github.com/r3motecontrol/Ghostpack-CompiledBinaries ghost
sudo git clone https://github.com/ivan-sincek/php-reverse-shell.git webshells
sudo git clone https://github.com/samratashok/nishang.git nishang
sudo git clone https://github.com/danielmiessler/SecLists.git seclists
sudo git clone https://github.com/itm4n/PrivescCheck.git privesccheck
sudo git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git
sudo mv zsh-autocomplete /usr/share/
sudo git clone https://github.com/jwilm/alacritty
cd alacritty
sudo cargo build --release && sudo cp target/release/alacritty /usr/local/bin
cd ..

sudo git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps && sudo mkdir -p build && cd build && sudo meson ..
sudo ninja
sudo ninja install
pip3 install pywal

echo -e "\e[41mNOTICE\e[0m"
echo "Now installing Nerd Fonts. This process can take 20-25minutes."
read -s -n 1 -p "Press ANY key to continue or Ctrl+C to Cancel and run this install at a later time."
sudo git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
sudo chmod +x install.sh
./install.sh

echo -e "\e[41mNOTICE\e[0m"
echo "After the script is done a reboot will occur. On the login screen select i3 (top right corner) on the login screen. Once on the desktop use the Github readme for more information."
read -s -n 1 -p "Press ANY key to continue."
sudo reboot
