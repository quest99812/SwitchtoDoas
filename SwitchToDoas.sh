sudo pacman -S opendoas #this is for installing an opendoas package
cat "permit persist setenv {PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin} :wheel" >> /etc/doas.conf # doas provides a persist feature. After the user successfully authenticates, they will not be prompted for a password again for 5 minutes.
doas pacman -Rdd sudo #removes sudo while ignoring broken dependencies
ln -s $(which doas) /usr/bin/sudo #any command using "sudo" will be using "doas" instead. For an example, instead of "sudo pacman -Syyu" the system will understand as "doas pacman -Syyu"

