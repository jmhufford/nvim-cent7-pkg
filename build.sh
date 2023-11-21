#!/bin/bash

# pull nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
mv squashfs-root nvim

# pull fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# pull dotfiles
git clone git@github.com:jmhufford/.dotfiles.git ~/.dotfiles
ln -s .dotfiles/nvim/.config ~/.config
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
	 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "scl enable devtoolset-8 bash"
echo "nvim/AppRun --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'"
