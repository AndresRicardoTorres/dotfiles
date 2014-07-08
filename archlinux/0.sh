### Internet conection ( wireless )

## See devices
# iw dev
## Up device and connect, "wlp4s0" is a example device
# ip link set wlp4s0 up
# wifi-menu wlp4s0

### Prepare disks, typical installation with / and /home
## Format with ext4
# mkfs.ext4 /dev/sdb5
# mkfs.ext4 /dev/sdb6
## Mount in new install
# mount /dev/sdb5 /mnt
# mkdir /mnt/home
# mount /dev/sdb6 /mnt/home  