<img width="1280" height="800" alt="2026-06-27-000614_hyprshot" src="https://github.com/user-attachments/assets/48f59569-ac1a-4a03-9503-6bc67f995284" /># Outraged-rice-
#Plain Desktop 
![Preview 1](2026-06-27-000555_hyprshot.png)

![Preview 2](2026-06-27-000605_hyprshot.png)

![Preview 3](2026-06-27-000614_hyprshot.png)

![Preview 4](2026-06-27-000700_hyprshot.png)

#Instructions 

#Dependences 
Brightnessctl 
Pulseaudio 
Waybar 
Rofi 
Eww 


#Dependences install commands


#Arch :

sudo pacman -S brightnessctl rofi pulseaudio waybar  && yay -S eww-git

#Fedora:
sudo dnf install brightnessctl rofi pulseaudio waybar rust cargo gcc-c++ gtk3-devel gtk-layer-shell-devel pango-devel -y && git clone https://github.com && cd eww && cargo build --release --no-default-features --features wayland

#Ubuntu :
sudo apt update && sudo apt install brightnessctl rofi pulseaudio waybar build-essential libgtk-3-dev -y && curl --proto '=https' --tlsv1.2 -sSf https://rustup.rs | sh -s -- -y && source "$HOME/.cargo/env" && git clone https://github.com && cd eww && cargo build --release --no-default-features --features wayland


#the Eww wifi and rofi codes used in the control center is not working properly.





the 
