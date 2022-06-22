sudo pacman -S bspwm sxhkd
mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd
cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
#cp arch-linux/bspwmrc ~/.config/bspwm/
#cp arch-linux/sxhkdrc ~/.config/sxhkd/
echo "exec bspwm" >> ~/.xinitrc
