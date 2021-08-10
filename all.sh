sudo reflector --verbose --country 'India' -l 5 --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -S --needed base-devel -y
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
#paru -S exfat-utils autofs fuse2 fuse3 fuse fuseiso xorg-server xorg-xinit font-bh-ttf  gsfonts sdl_ttf ttf-bitstream-vera ttf-dejavu ttf-liberation xorg-fonts-type1  ttf-indic-otf  noto-fonts-emoji font-bh-ttf  sdl_ttf ttf-bitstream-vera ttf-dejavu ttf-liberation xorg-fonts-type1 alsa-utils alsa-plugins  pulseaudio pulseaudio-alsa  unrar  zip unzip p7zip gvfs-mtp  jmtpfs  mtpfs  xdg-user-dirs -y
paru -S lightdm lightdm-webkit-theme-aether lightdm-webkit2-greeter xfce4 xorg 
sudo systemctl enable lightdm
: ' virtualbox
paru -S xf86-video-vmware  terminator neofetch sxiv celluloid pcmanfm nerd-fonts-mononoki file-roller net-tools 
'
: ' my host
paru -S xf86-video-amdgpu qtile rofi nitrogen picom pcmanfm lxsession alacritty xfce4-power-manager  -y
paru -S brave-bin telegram-desktop-bin terminator qbittorrent  light flatpak virtualbox pavucontrol rhythmbox freeoffice -y
paru -S neofetch sxiv celluloid pcmanfm nerd-fonts-mononoki file-roller net-tools
sudo pacman -S nvidia nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader nvidia nvidia-dkms nvidia-prime lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader -y
git clone https://gitlab.com/saichaitanya278/dotfiles.git  
cp -r ~/dotfiles/.config/qtile/ ~/.config
cp -r ~/dotfiles/.config/alacritty/  ~/.config
cp -r ~/dotfiles/.config/rofi/  ~/.config
'
: 'zsh
paru -S zsh zsh-syntax-highlighting  zsh-autosuggestions autojump exa -y
cd ~
git clone --recursive https://github.com/saichaitanya278/zsh.git
git clone https://github.com/romkatv/powerlevel10k.git
ln -s -f ~/zsh/.zshrc ~/.zshrc
sudo su
cd /
git clone --recursive https://github.com/saichaitanya278/zsh.git
git clone https://github.com/romkatv/powerlevel10k.git
ln -s -f ~/zsh/.zshrc ~/.zshrc
'
