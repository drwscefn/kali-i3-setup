#!/bin/bash

echo -e "\e[41mPwnBox Install\e[0m"
echo -e "\e[41mBased off xct/clean and theGuildHall/pwnbox\e[0m"
echo -e "\e[41mUpdated 01.14.2022 \e[24m"
echo -e "\e[41mBy:Christopher Soehnlein | https://IslandDog.ky \e[0m"
read -s -n 1 -p "Press ANY key to continue."
echo ""

#Kali Linux 2022 Install
echo -e "Nano is about to launch, copy the following before proceeding with the install"
echo ""
echo -e "deb http://http.kali.org/kali kali main contrib non-free"
echo -e "deb-src http://http.kali.org/kali kali main contrib non-free"
echo -e "deb http://security.kali.org/kali-security kali/updates main contrib non-free"
echo -e "deb-src http://security.kali.org/kali-security kali/updates main contrib non-free"
read -s -n 1 -p "Press ANY key after copying the 4 lines above. Use Ctrl+Shift+V to Paste. Use Ctrl+X to Save in Nano."
echo -e ""
sudo nano /etc/apt/sources.list
clear
cat /etc/apt/sources.list
read -s -n 1 -p "Confirm this has been copied before proceeding with the install."

sudo apt-get install -y build-essential checkinstall
sudo apt-get install -y autoconf automake autotools-dev m4
sudo apt-get install -y libx11-dev
sudo apt-get install -y freeglut3-dev
sudo apt-get install -y jq
sudo apt-get install -y arandr 
sudo apt-get install -y flameshot
sudo apt-get install -y python3-pip rofi
sudo apt-get install -y unclutter compton imagemagick
sudo apt-get install -y arc-theme papirus-icon-theme
sudo apt-get install -y feh
sudo apt-get install -y i3blocks i3status i3 i3-wm
sudo apt-get install -y libxcb-shape0-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev autoconf meson
sudo apt-get install -y libxcb-render-util0-dev libxcb-shape0-dev libxcb-xfixes0-dev 
sudo apt-get install -y gobuster onedrive enum4linux nbtscan nikto nmap oscanner smbclient smbmap smtp-user-enum snmp sslscan whatweb
sudo apt-get install -y cargo
source $HOME/.cargo/env

mkdir -p ~/.config/i3
mkdir -p ~/.config/compton
mkdir -p ~/.config/rofi
mkdir -p ~/.config/alacritty
mkdir -p ~/.wallpaper
sudo mv .config/i3/config ~/.config/i3/config
sudo mv .config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
sudo mv .config/i3/i3blocks.conf ~/.config/i3/i3blocks.conf
sudo mv .config/compton/compton.conf ~/.config/compton/compton.conf
sudo mv .config/rofi/config ~/.config/rofi/config
sudo mv .fehbg ~/.fehbg
sudo mv .config/i3/clipboard_fix.sh ~/.config/i3/clipboard_fix.sh
sudo mv vpnbash.sh vpnserver.sh /opt/
sudo chmod +x /opt/vpn*.sh
sudo mv htb.jpg htb2.jpg ~/.wallpaper
clear
echo -e "\e[41mNOTICE\e[0m"
read -s -n 1 -p "Beginning tool installs. Press ANY key to continue."
curl https://sh.rustup.rs -sSf | sh
cargo install rustscan feroxbuster
sudo curl -sL https://api.github.com/repos/carlospolop/PEASS-ng/releases/latest | jq -r ".assets[].browser_download_url" >> peass
sudo curl -sL https://api.github.com/repos/DominicBreuker/pspy/releases/latest | jq -r ".assets[].browser_download_url" >> pspy
sudo mkdir /opt/peass
sudo mkdir /opt/pspy
sudo mv peass /opt/peass
sudo mv pspy /opt/pspy
cd /opt/peass
sudo wget -i peass
cd ..
cd /opt/pspy
sudo wget -i pspy
cd ..
sudo git clone https://github.com/rebootuser/LinEnum linenum
sudo git clone https://github.com/M4ximuss/Powerless powerless
sudo git clone https://github.com/r3motecontrol/Ghostpack-CompiledBinaries ghost
sudo git clone https://github.com/ivan-sincek/php-reverse-shell.git webshells
sudo git clone https://github.com/samratashok/nishang.git nishang
sudo git clone https://github.com/danielmiessler/SecLists.git seclists
sudo git clone https://github.com/itm4n/PrivescCheck.git privesccheck
sudo git clone https://github.com/stealthcopter/deepce.git docker-enum
sudo git clone https://github.com/dirkjanm/krbrelayx.git krbrelayx
sudo git clone https://github.com/Anon-Exploiter/SUID3NUM.git suidenum
git clone https://github.com/commixproject/commix.git commix
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
python3-pip install pywal

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
