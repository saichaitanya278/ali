sudo reflector --verbose --country 'India' -l 5 --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -S --needed base-devel -y
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
paru -S exfat-utils autofs fuse2 fuse3 fuse fuseiso xorg-server xorg-xinit font-bh-ttf  gsfonts sdl_ttf ttf-bitstream-vera ttf-dejavu ttf-liberation xorg-fonts-type1  ttf-indic-otf  noto-fonts-emoji font-bh-ttf  sdl_ttf ttf-bitstream-vera ttf-dejavu ttf-liberation xorg-fonts-type1 alsa-utils alsa-plugins  pulseaudio pulseaudio-alsa  unrar  zip unzip p7zip gvfs-mtp  jmtpfs  mtpfs  xdg-user-dirs -y
paru -S lightdm lightdm-webkit-theme-aether lightdm-webkit2-greeter xorg 
sudo systemctl enable lightdm
: ' virtualbox
paru -S xf86-video-vmware  terminator neofetch sxiv celluloid pcmanfm nerd-fonts-mononoki file-roller net-tools 
'
: ' my host
paru -S xf86-video-amdgpu  xmonad xmonad-contrib  xdotool  alacritty  xmobar  trayer  nitrogen picom pcmanfm lxsession sxiv xfce4-power-manager  flameshot  volumeicon pavucontrol papirus-icon-theme  light exa otf-font-awesome-5-free htop iftop lxappearance dmenu materia-theme xfce4-clipman-plugin -y
paru -S brave-bin telegram-desktop-bin  light  virtualbox pavucontrol rhythmbox mpv neofetch sxiv nerd-fonts-mononoki file-roller net-tools -y
sudo pacman -S nvidia nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader nvidia nvidia-dkms nvidia-prime lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader -y
curl -L http://get.oh-my.fish | fish
paru -S starship qt5ct kvantum-qt5
git clone https://gitlab.com/saichaitanya278/dotfiles.git  
cd ~
cp -r -v dotfiles/xmonad/ ~/
cp -r -v dotfiles/.config/xmobar/ ~/.config/
cp -r -v dotfiles/.config/alacritty/ ~/.config/
cp -r -v dotfiles/.config/fish/ ~/.config/
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
