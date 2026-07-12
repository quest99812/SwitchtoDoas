sudo pacman -S opendoas #this is for installing an opendoas package
echo "permit persist setenv {PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin} :wheel" | sudo tee /etc/doas.conf  # doas provides a persist feature. After the user successfully authenticates, they will not be prompted for a password again for 5 minutes. The command itself is for writing the config for doas file located in /etc/ directory
doas pacman -Rdd sudo #removes sudo while ignoring broken dependencies
ln -s $(which doas) /usr/bin/sudo #any command using "sudo" will be using "doas" instead. For an example, instead of "sudo pacman -Syyu" the system will understand as "doas pacman -Syyu"

