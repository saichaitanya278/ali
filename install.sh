timedatectl set-ntp true
mkfs.fat -F32 /dev/nvme0n1p5
mkfs.ext4 /dev/nvme0n1p7
mkswap /dev/nvme0n1p6
swapon /dev/nvme0n1p6
mount /dev/nvme0n1p7 /mnt
mount /dev/nvme0n1p5 /mnt/boot/
pacstrap /mnt base linux linux-firmware nano grub efibootmgr networkmanager network-manager-applet wireless_tools wpa_supplicant dialog os-prober mtools dosfstools base-devel linux-headers reflector grub-btrfs
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
hwclock --systohc
echo "en_US ISO-8859-1" >> /etc/locale.gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "archlinux" >> /etc/hostname
echo "127.0.0.1 localhost
::1       localhost
127.0.1.1 archlinux.localdomain archlinux" >> /etc/hosts
passwd
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
systemctl enable NetworkManager
useradd -mG wheel sai
passwd sai
echo '%wheel ALL=(ALL) ALL' &>>/etc/sudoers
exit
umount -a
