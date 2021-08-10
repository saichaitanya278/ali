#iwctl
#station wlan0 scan
#station wlan0 get-networks
#station wlan0 connect "Sai Chaitanya 5Ghz"
timedatectl set-ntp true
: ' ssd drive
mkfs.fat -F32 /dev/nvme0n1p5
mkfs.ext4 /dev/nvme0n1p7
mkswap /dev/nvme0n1p6
swapon /dev/nvme0n1p6
mount /dev/nvme0n1p7 /mnt
mkdir /mnt/boot
mount /dev/nvme0n1p5 /mnt/boot/
'
: ' hdd drive
mkfs.fat -F32 /dev/sda1
mkfs.ext4 /dev/sda3
mkswap /dev/sda2
swapon /dev/sda2
mount /dev/sda3 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot/
'
: ' dos
mkfs.ext4 /dev/sda1
mount /dev/sda1 /mnt
'
pacstrap /mnt base linux-lts linux-firmware nano grub efibootmgr vim networkmanager git network-manager-applet wireless_tools wpa_supplicant dialog os-prober mtools dosfstools base-devel linux-lts-headers reflector
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
