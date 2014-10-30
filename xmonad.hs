import XMonad
 
main = xmonad defaultConfig
        { modMask = mod4Mask -- Use Super instead of Alt
        , borderWidth = 0
        , terminal = "urxvt"
        -- more changes
        }
