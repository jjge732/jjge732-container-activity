#! /bin/bash
sudo chroot rootfs /bin/bash
mount -t proc proc /proc
exit
sudo unshare -p -f --mount-proc=$(pwd)/rootfs/proc
chroot rootfs /bin/bash
