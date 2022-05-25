#!/bin/sh

echo "Prepare the environment..."
sudo apt-get install software-properties-common 
sudo add-apt-repository ppa:neovim-ppa/stable 
sudo apt update 

echo "Install the neovim..."
sudo apt install -y neovim 

echo "Install the Packer..."
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

FinderPath = "~/.config"

if [ ! -d "$FinderPath" ];then
    mkdir $FinderPath && cd $FinderPath
    echo "Create a New Finder..."
else
    cd ~/.config
    echo "Finder has been exists..."
fi


sudo ln -s /usr/bin/nvim /usr/local/bin/vi
nvim

