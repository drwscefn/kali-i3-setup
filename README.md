#### Battery (laptop related)
```bash
#Updated to pull directly from acpi as my battery information was not displaying correctly.
sudo vim ~/.config/i3/i3blocks.conf
```

## i3 Hotkeys

### Most Important
| Command               |Description                    |
|-----------------------|-------------------------------|
| `WIN`                 | Default modifier key.         |
| `Ctrl` + Enter*       | Spawn new terminal in PWD.    |
| `WIN` + Enter         | Spawn new terminal in Home.   |
| `Alt` + Down Arrow    | Goes to autofill menu.        |
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


#### Thanks
[xct/kali-clean](https://github.com/xct/kali-clean) 
[islanddog/kali-clean-pwnbox](https://github.com/islanddog/kali-clean-pwnbox)
