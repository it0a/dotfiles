import XMonad
import XMonad.Actions.Warp
import XMonad.Hooks.UrgencyHook
import XMonad.Util.NamedWindows
import XMonad.Util.Run

import qualified XMonad.StackSet as W

data LibNotifyUrgencyHook = LibNotifyUrgencyHook deriving (Read, Show)

instance UrgencyHook LibNotifyUrgencyHook where
    urgencyHook LibNotifyUrgencyHook w = do
        name     <- getName w
        Just idx <- fmap (W.findTag w) $ gets windowset

        safeSpawn "notify-send" [show name, "workspace " ++ idx]

main :: IO()
main = xmonad
    $ withUrgencyHook LibNotifyUrgencyHook
    $ defaultConfig
        { modMask = mod4Mask -- Use Super instead of Alt
        , borderWidth = 0
        , terminal = "urxvt"
        -- more changes
        }

