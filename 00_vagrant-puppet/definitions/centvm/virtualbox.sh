# Installing the virtualbox guest additions
VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
cd /tmp
mount -o loop /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso /media
sh /media/VBoxLinuxAdditions.run
umount /media
rm -rf /home/vagrant/VBoxGuestAdditions_*.iso

