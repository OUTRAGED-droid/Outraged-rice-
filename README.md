# Outraged-rice-

## 🖥️  Desktop preview  

<p align="center">
  <img src="2026-06-27-000555_hyprshot.png" alt="Preview 1" width="48%"/>
  <img src="2026-06-27-000605_hyprshot.png" alt="Preview 2" width="48%"/>
</p>
<p align="center">
  <img src="2026-06-27-000614_hyprshot.png" alt="Preview 3" width="48%"/>
  <img src="2026-06-27-000700_hyprshot.png" alt="Preview 4" width="48%"/>
</p>

---

## 🛠️ Instructions 

### Dependencies 
Make sure you have the following packages installed before applying the configuration:
* `brightnessctl`
* `pulseaudio`
* `waybar`
* `rofi`
* `eww`

---

## 🚀 Dependency Installation Commands

Choose the command block that matches your Linux distribution:

### Arch Linux
```bash
sudo pacman -S brightnessctl rofi pulseaudio waybar && yay -S eww-git

```
sudo dnf install brightnessctl rofi pulseaudio waybar rust cargo gcc-c++ gtk3-devel gtk-layer-shell-devel pango-devel -y && \
git clone [https://github.com/elkowar/eww](https://github.com/elkowar/eww) && \
cd eww && \
cargo build --release --no-default-features --features wayland

 && \
 build --release --no-default-features --features wayland
