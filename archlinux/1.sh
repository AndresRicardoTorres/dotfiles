## ( Optional ) create an sorted mirrorlistfile
pacman -Sy reflector
reflector --sort rate --save /etc/pacman.d/mirrorlist --latest 5

## Install base system (TODO: --no-confirm)
pacstrap -i /mnt base
## Generate fstab
genfstab -U -p /mnt/ >> /mnt/etc/fstab

## Copy script 
cp 2.sh /mnt/home/
arch-chroot /mnt /bin/bash
## Maybe works with arch-chroot /mnt 2.sh