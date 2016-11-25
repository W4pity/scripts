#! /bin/sh


mkdir -p ~/scripts/scripts/configuration/yourhome/.config/i3
cp ~/.vimrc ~/scripts/scripts/configuration/yourhome/
cp ~/.bashrc ~/scripts/scripts/configuration/yourhome/
cp ~/.Xdefaults ~/scripts/scripts/configuration/yourhome/
cp ~/.xinitrc ~/scripts/scripts/configuration/yourhome/
cp ~/.Xauthority ~/scripts/scripts/configuration/yourhome/
cp ~/.i3status.conf ~/scripts/scripts/configuration/yourhome/
cp ~/.gitignore ~/scripts/scripts/configuration/yourhome/
cp ~/.config/i3/config ~/scripts/scripts/configuration/yourhome/.config/i3

cd ~/scripts/scripts

git add -A
date=$(date -d 'now')
git commit -m "files auto saved $date"
