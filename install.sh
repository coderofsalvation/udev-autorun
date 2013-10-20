#!/bin/bash

mydir="$(dirname $(readlink -f "$0"))"
cd "$mydir"

[[ ! -d /lib/udev ]] && echo "ERROR: udev is not installed.." && exit 1

echo "[x] about to copy this dir to /opt"
sudo cp -R "$mydir" /opt/.

echo "[x] creating /var/log/udev-autorun.log"
sudo touch /var/log/udev-autorun.log{,.env}
sudo chmod 777 /var/log/udev-autorun.*

ls udev/rules.d | while read file; do 
  sudo cp "udev/rules.d/$file" /lib/udev/rules.d/.
  echo "[x] copying to /lib/udev/rules.d/$file"
#  pidof X &>/dev/null && sudo sed -i 's| run | runx |g' "/lib/udev/rules.d/$file"
done

sudo ln -fs /opt/udev-autorun/udev-autorun /usr/bin/udev-autorun

echo "[x] restarting udev"
sudo which service && sudo service udev restart
sudo which systemctl && sudo systemctl restart udev

echo "[x] done"
