pacman -S xorg xorg-xinit xf86-video-amdgpu
cp /etc/X11/xinit/xinitrc ~/.xinitrc
sed -i '52,$d' ~/.xinitrc
