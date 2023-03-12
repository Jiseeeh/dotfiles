#!/bin/sh

# yay
sudo pacman -S yay

# things i need for web dev
sudo pacman -S nodejs npm neovim discord && yay -S visual-studio-code-bin google-chrome amdgpu-pro-oglp
sudo npm i -g yarn pnpm

echo "Do you want to install other apps?"
echo "If yes, input y otherwise you can input anything."

read answer

if [ "$answer" = "y" ]
then
    # others
    sudo pacman -S flameshot gnome-boxes onefetch simplescreenrecorder && yay -S logseq-desktop-bin premid
    
    # clone notes
    git clone git@github.com:Jiseeeh/my-logseq-notes.git
else 
    echo "Done!"
fi
