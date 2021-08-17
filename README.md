# Kali-Clean

`xct/kali-clean` Desktop with my changes/additions. 

## Installation
```
./install.sh
```
After the script is done reboot and select i3 (top right corner) on the login screen. Then open a terminal (`WIN+return`) run `lxappearance`and select ark-dark theme and change the icons to whatever you like (I used papyrus).

### Most Important
| Command               |Description                    |
|-----------------------|-------------------------------|
| `WIN`                 | Default modifier key.         |
| `WIN` + D             | Launch a Program.             |
| `WIN` + Shift + Q     | Kill a focused window.        |
| Mouse + `WIN`         | Drag floating windows around. |
| `WIN` + Enter         | Spawn terminal window.        |
| `WIN` + F             | Launch Fullscreen.            |
| `WIN` + `Shift` + 1-0 | Move container (focused).     |
| `WIN` + N             | Rename Container (Use #:).    |
| `WIN` + 1-0           | Switch to new Workspace.      |
| `WIN` + `Shift` + C   | Reload configuration file.    |
| `WIN` + `Shift` + R   | Restart i3 - Keep UI/Session. |
| `WIN` + `Shift` + E   | Kill i3 - Logs out of Session.|
| `WIN` + P             | Take Screenshot (FlameShot).  |

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
| Command    |Description     |
|------------|----------------|
| `WIN` + A  | Focus parent container |
| `WIN` + D  | Focus child container  |

### Resize Window **10px/per**
| Command    |Description   |
|------------|--------------|
| `WIN` + J  | Shrink Width |
| `WIN` + K  | Grow Height  |
| `WIN` + L | Shrink Height |
| `WIN` + ; | Grow Width    |
