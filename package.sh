#!/bin/bash


mkdir -p nvim-pkg
cp -r nvim nvim-pkg/.
cp -r pylsp nvim-pkg/.
cp -r ~/.local/share/nvim nvim-pkg/share
cp -r ~/.local/state/nvim nvim-pkg/state
cp -r ~/.fzf/bin nvim-pkg/fzf
tar -czvf nvim-pkg.tar.gz nvim-pkg
