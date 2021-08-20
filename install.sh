#!/bin/bash

sudo apt-get install -y arandr flameshot arc-theme feh i3blocks i3status i3 i3-wm lxappearance python3-pip rofi unclutter cargo compton papirus-icon-theme imagemagick
sudo apt-get install -y libxcb-shape0-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev autoconf meson
sudo apt-get install -y libxcb-render-util0-dev libxcb-shape0-dev libxcb-xfixes0-dev 
sudo apt-get install -y onedrive enum4linux nbtscan nikto nmap oscanner smbclient smbmap smtp-user-enum snmp sslscan whatweb
cargo install rustscan
cargo install feroxbuster

cd /opt/
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite
git clone https://github.com/rebootuser/LinEnum
git clone https://github.com/M4ximuss/Powerless
git clone https://github.com/r3motecontrol/Ghostpack-CompiledBinaries
git clone https://github.com/ivan-sincek/php-reverse-shell.git
git clone https://github.com/samratashok/nishang.git
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git
sudo mv zsh-autocomplete /usr/share/
git clone https://github.com/jwilm/alacritty
cd alacritty
cargo build --release && sudo cp target/release/alacritty /usr/local/bin
cd ..

git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps && mkdir -p build && cd build && meson ..
ninja
sudo ninja install
cd ../..

pip3 install pywal

mkdir -p ~/.config/i3
mkdir -p ~/.config/compton
mkdir -p ~/.config/rofi
mkdir -p ~/.config/alacritty
mkdir -p ~/.wallpaper
cp .config/i3/config ~/.config/i3/config
cp .config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
cp .config/i3/i3blocks.conf ~/.config/i3/i3blocks.conf
cp .config/compton/compton.conf ~/.config/compton/compton.conf
cp .config/rofi/config ~/.config/rofi/config
cp .fehbg ~/.fehbg
cp .config/i3/clipboard_fix.sh ~/.config/i3/clipboard_fix.sh
sudo mv vpnbash.sh vpnserver.sh /opt/
sudo mv htb.jpg htb2.jpg ~/.wallpaper
