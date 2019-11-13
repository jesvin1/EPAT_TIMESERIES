#
# Adding Swap Space to Linux Machine
#
# The Python Quants GmbH
#
mkdir /media/swap
dd if=/dev/zero of=/media/swap/swapfile.img bs=4096 count=1M
mkswap /media/swap/swapfile.img
chmod 0600 /media/swap/swapfile.img
echo "/media/swap/swapfile.img swap swap sw 0 0" >> /etc/fstab
swapon /media/swap/swapfile.img
