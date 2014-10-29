pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null
ln -s $SCRIPTPATH/xmonad.hs $HOME/.xmonad/xmonad.hs
echo "Symlinked xmonad.hs to $HOME/.xmonad/xmonad.hs"
