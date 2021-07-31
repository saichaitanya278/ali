iwctl
station wlan0 scan
station wlan0 get-networks
station wlan0 connect "Sai Chaitanya 5Ghz"
timedatectl set-ntp true
mkfs.fat -F32 /dev/sda1
mkfs.ext4 /dev/sda3
mkswap /dev/sda2
swapon /dev/sda2
mount /dev/sda3 /mnt
mmkdir /mnt/boot
mount /dev/sda1 /mnt/boot/
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
