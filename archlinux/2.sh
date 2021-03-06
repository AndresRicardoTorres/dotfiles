## Locales
echo "es_CO.UTF-8 UTF-8" >> /etc/locale.gen
echo "LANG=es_CO.UTF-8" > /etc/locale.conf
export LANG=es_CO.UTF-8
locale-gen

## Time and date
ln -s /usr/share/zoneinfo/America/Bogota /etc/localtime
hwclock --systohc --utc

## Console keymap
echo "KEYMAP=la-latin1" > /etc/vconsole.conf

## Network config
WIRELESS_DEV=`ip link | grep wlp | awk '{print $2}'| sed 's/://' | sed '1!d'`
if [[ -n $WIRELESS_DEV ]]; then
  pacman -S iw wireless_tools wpa_actiond wpa_supplicant dialog 
fi
WIRED_DEV=`ip link | grep enp | awk '{print $2}'| sed 's/://' | sed '1!d'`
if [[-n $WIRED_DEV ]]; then
  systemctl enable dhcpcd@${WIRED_DEV}.service
fi


## Create an initial ramdisk environment ( TODO: Confirm this is not necessary)
mkinitcpio -p linux

## Install grub
pacman -S grub os-prober
grub-install --target=i386-pc --recheck /dev/sdb
grub-mkconfig -o /boot/grub/grub.cfg

echo "Change root password with passwd"
passwd

echo "exit for leave chroot, umount -R /mnt/ , and reboot"