upower -e
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xsetroot -cursor_name left_ptr
syndaemon -t -k -i 2 &
exec ~/.xmonad/xmonad-x86_64-linux
/*exec ratpoison*/
/*startxfce4*/
exec xset -b
xterm 
