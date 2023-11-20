#!/bin/bash


mkdir -p nvim-pkg
cp -r nvim nvim-pkg/.
cp -r ~/.local/share/nvim nvim-pkg/local
tar -czvf nvim-pkg.tar.gz nvim-pkg
