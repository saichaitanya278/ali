sudo pacman -S --needed base-devel 
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
paru -S xf86-video-amdgpu xorg  pcmanfm  sxiv alacritty xfce4 celluloid nerd-fonts-mononoki lightdm lightdm-webkit-theme-aether lightdm-webkit2-greeter neofetch
#paru -S brave-bin telegram-desktop-bin terminator qbittorrent file-roller light net-tools  flatpak virtualbox pavucontrol rhythmbox  freeoffice  qtile rofi nitrogen picom pcmanfm lxsession sxiv alacritty xfce4-power-manager 
sudo systemctl enable lightdm
#git clone https://gitlab.com/saichaitanya278/dotfiles.git  
#cp -r ~/dotfiles/.config/qtile/ ~/.config
#cp -r ~/dotfiles/.config/alacritty/  ~/.config
#cp -r ~/dotfiles/.config/rofi/  ~/.config
#sudo pacman -S nvidia nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader nvidia nvidia-dkms nvidia-prime lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader
paru -S zsh zsh-syntax-highlighting  zsh-autosuggestions autojump exa -y
git clone --recursive https://github.com/saichaitanya278/zsh.git
git clone https://github.com/romkatv/powerlevel10k.git
ln -s -f ~/zsh/.zshrc ~/.zshrc
