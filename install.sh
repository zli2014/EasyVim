#########################################################################
# Author:     冯岳松（yuesong-feng@foxmail.com）
# Created Time: Tue Jun 11 16:44:48 2022
#########################################################################
#!/bin/bash

echo "[INFO]: reset vim configure file"
if [ -f ~/.vimrc ] || [ -h ~/.vimrc ]; then
    rm ~/.vimrc
fi
cp -v vimrc ~/.vimrc

echo "[INFO]: reset vim dir"
if [ -d ~/.vim ]; then
    rm -rf ~/.vim
fi
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.vim/autoload
cp -v plug.vim ~/.vim/autoload

echo "Finish install EasyVim!!!"
echo "start vim and run :PlugInstall"
