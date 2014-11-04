#!/bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null
rm -f $HOME/.xmonad/xmonad.hs
ln -s $SCRIPTPATH/xmonad.hs $HOME/.xmonad/xmonad.hs
echo "Symlinked xmonad.hs to $HOME/.xmonad/xmonad.hs"
rm -f $HOME/.tmux.conf
ln -s $SCRIPTPATH/.tmux.conf $HOME/.tmux.conf
echo "Symlinked .tmux.conf to $HOME/.tmux.conf"
rm -f $HOME/.emacs
ln -s $SCRIPTPATH/.emacs $HOME/.emacs
echo "Symlinked .emacs to $HOME/.emacs"
rm -f $HOME/.zshrc
ln -s $SCRIPTPATH/.zshrc $HOME/.zshrc
echo "Symlinked .zshrc to $HOME/.zshrc"
rm -f $HOME/.Xresources
ln -s $SCRIPTPATH/.Xresources $HOME/.Xresources
echo "Symlinked .Xresources to $HOME/.Xresources"
rm -f $HOME/.xinitrc
ln -s $SCRIPTPATH/.xinitrc $HOME/.xinitrc
echo "Symlinked .xinitrc to $HOME/.xinitrc"
rm -f $HOME/.muttrc
ln -s $SCRIPTPATH/.muttrc $HOME/.muttrc
echo "Symlinked .muttrc to $HOME/.muttrc"
rm -f $HOME/.ratpoisonrc
ln -s $SCRIPTPATH/.ratpoisonrc $HOME/.ratpoisonrc
echo "Symlinked .ratpoisonrc to $HOME/.ratpoisonrc"
