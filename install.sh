#!/bin/bash

echo 'Copying config files...'
cp .tmux.conf ~/.tmux.conf
cp .vimrc ~/.vimrc
echo 'Copy complete!'


echo 'Applying changes to .bashrc...'
cat .bashrc >> ~/.bashrc   
echo 'Setup complete!'
