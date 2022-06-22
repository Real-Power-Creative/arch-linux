mkdir ~/.fonts
mkdir ~/.fonts/JetBrainsMono
git clone https://github.com/JetBrains/JetBrainsMono.git
mv ~/JetBrainsMono/fonts/ttf/* ~/.fonts/JetBrainsMono/
#sed -i -e '9s/monospace/JetBrains Mono Medium/' -e '10s/auto/JetBrains Mono Bold/' -e '11s/auto/JetBrains Mono Italic/' -e '12s/auto/JetBrains Mono Bold Italic/' -e '28s/11/13/' ~/.config/kitty/kitty.conf

