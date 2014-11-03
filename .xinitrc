upower -e
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xsetroot -cursor_name left_ptr
exec ~/.xmonad/xmonad-x86_64-linux
/*exec ratpoison*/
exec xset -b
xterm 
