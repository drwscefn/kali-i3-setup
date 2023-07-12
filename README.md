# XCT Kali - PwnBox Update

[xct/kali-clean](https://github.com/xct/kali-clean) with [theGuildHall/pwnbox](https://github.com/theGuildHall/pwnbox) PwnBox additions and some personal tweaks/changes.
Check out my notes section here https://github.com/islanddog/notes

![image](https://user-images.githubusercontent.com/16761753/132256475-1dabd629-b4a1-45c7-9698-387232f54add.png)

![image](https://user-images.githubusercontent.com/16761753/132256835-b6050c7a-6c36-416d-9fdc-1fb001ed0095.png)

## Before You Begin!! (Bundled into script)
```bash
read -s -n 1 -p "Press ANY key to continue."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
sudo git clone https://github.com/jwilm/alacritty
cd alacritty
rustup override set stable
sudo rustup override set stable
cargo build --release && sudo cp target/release/alacritty /usr/local/bin
cd ..
```
Then proceed with installation below. This might change in the future just testing with newest build.

## Installation
```bash
./install.sh
#Start nerd fonts after first installation (20min install)
./nerdfonts.sh
```

Nerd fonts full repo takes forever to download/install. Grab a subset or kick it off during the secondary install. Once installed use **xct** notes below:

**xct** - After the script is done reboot and select i3 (top right corner) on the login screen. Then open a terminal (hotkey below) run `lxappearance`and select ark-dark theme and change the icons to whatever you like (I used papyrus). Grab some wallpaper and run pywal -i filename to set your color scheme.

### Additional Notes

#### Change Weather
```bash
#Line 80 - Change to yours - https://wttr.in/
sudo mousepad ~/.config/i3/i3blocks.conf
```

#### VPN File Name (used for .zshrc/.bashrc UI)
```bash
#Line 3 - Change to name of your HTB VPN file.
sudo mousepad /opt/vpnserver.sh
```

#### .bashrc and .zshrc
Both configs are available in the Install directory. Merge/Overwrite for the HTB feel.
```bash
sudo mv -b .bashrc .zshrc ~/.
```

#### Change Background
**xct -** To have the wallpaper set on every boot edit ~.fehbg
Two wallpapers available from **theGuildHall*** if you want the HTB feel in ~/.wallpapers.
```bash
sudo mousepad ~/.fehbg
```

#### Battery (laptop related)
```bash
#Updated to pull directly from acpi as my battery information was not displaying correctly.
sudo mousepad ~/.config/i3/i3blocks.conf
```
####  Fix Screen Resolution Copy/Paste VM Workstation 16 Player
```bash
apt-get install open-vm-tools
sudo apt install -y --reinstall open-vm-tools-desktop fuse3
sudo reboot -f
```

## i3 Hotkeys

### Most Important
| Command               |Description                    |
|-----------------------|-------------------------------|
| `WIN`                 | Default modifier key.         |
| `Ctrl` + Enter*       | Spawn new terminal in PWD.    |
| `WIN` + Enter         | Spawn new terminal in Home.   |
| `WIN` + D             | Launch a Program.             |
| `WIN` + Shift + Q     | Kill a focused window.        |
| Mouse + `WIN`         | Drag floating windows around. |
| `WIN` + F             | Launch Selected Fullscreen.   |
| `WIN` + `Shift` + 1-0 | Move container (focused).     |
| `WIN` + N             | Rename Container (Use #:).    |
| `WIN` + 1-0           | Switch to new Workspace.      |
| `WIN` + `Shift` + C   | Reload configuration file.    |
| `WIN` + `Shift` + R   | Restart i3 - Keep UI/Session. |
| `WIN` + `Shift` + E   | Kill i3 - Logs out of Session.|
| `WIN` + P             | Take Screenshot (FlameShot).  |
#### *Must be used inside a terminal window (Alacritty).

### Container Layout
| Command    |Description      |
|------------|-----------------|
| `WIN` + S  | Stacking Layout |
| `WIN` + W  | Tabbed Layout   |
| `WIN` + E  | Split Layout    |

### Change Focus (Mouse) - **Highlighting works too.**
| Command    |Description  |
|------------|-------------|
| `WIN` + ⬆  | Focus Up    |
| `WIN` + ⬇  | Focus Down  |
| `WIN` + ⬅ | Focus Left  |
| `WIN` + ➡ | Focus Right |
#### **Move the Windows above using the `Shift` key**.

### Split Pane
| Command    |Description     |
|------------|----------------|
| `WIN` + V  | Split Vertical |
| `WIN` + H  | Split Horizon  |

### Other
| Command            |Description             |
|--------------------|------------------------|
| `WIN` + A          | Focus parent container |
| `WIN` + Shift + D  | Focus child container  |

### Resize Window **10px/per**
| Command    |Description    |
|------------|---------------|
| `WIN` + R  | Enter Resize  |
| `WIN` + J  | Shrink Width  |
| `WIN` + K  | Grow Height   |
| `WIN` + L  | Shrink Height |
| `WIN` + ;  | Grow Width    |
