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
