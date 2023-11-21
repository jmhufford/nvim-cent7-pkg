#!/bin/bash


mkdir -p nvim-pkg
cp -r nvim nvim-pkg/.
cp -r ~/.local/share/nvim nvim-pkg/share
cp -r ~/.local/state/nvim nvim-pkg/state
tar -czvf nvim-pkg.tar.gz nvim-pkg
