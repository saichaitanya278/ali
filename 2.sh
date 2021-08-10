ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
hwclock --systohc
echo "en_US ISO-8859-1
en_US.UTF-8 UTF-8" >> /etc/locale.gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "archlinux" >> /etc/hostname
echo "127.0.0.1 localhost
::1       localhost
127.0.1.1 archlinux.localdomain archlinux" >> /etc/hosts
passwd
grub-install --target=i386-pc /dev/vda
#grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
systemctl enable NetworkManager
useradd -mG wheel sai
passwd sai
echo '%wheel ALL=(ALL) ALL' &>>/etc/sudoers
