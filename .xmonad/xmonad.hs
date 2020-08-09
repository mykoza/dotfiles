import XMonad
import XMonad.Config.Desktop -- better defaults

-- Hooks
import XMonad.Hooks.ManageDocks -- avoid bar
import XMonad.Hooks.DynamicLog -- xmobar integration
import XMonad.Hooks.EwmhDesktops -- windows in rofi

import XMonad.Layout.Spacing -- gaps

import XMonad.Util.Run   -- for spawnPipe and hPutStrLn

import XMonad.Util.EZConfig -- Easier keybinding configuration

import qualified XMonad.StackSet as W

main = do
    h <- spawnPipe "xmobar"
    xmonad $ docks $ ewmh $ def {
      terminal           = myTerminal
    , modMask            = mod4Mask
    , borderWidth        = 2
    , normalBorderColor  = "#282828"
    , focusedBorderColor = "#83a598"
    , layoutHook         = myLayoutHook
    , manageHook         = manageHook def <+> manageDocks
    , logHook            = dynamicLogWithPP $ def { ppOutput = hPutStrLn h
                                                  , ppCurrent = xmobarColor "#83a598" "" . wrap "[" "]"
                                                  , ppUrgent = xmobarColor "#fe8019" "" . wrap "*" "*"
                                                  }
    , handleEventHook    = handleEventHook def <+> fullscreenEventHook
    }

        `additionalKeysP`
        [ ("M-p", spawn "rofi -show combi")
        , ("M-<Return>", spawn myTerminal)
        , ("M-S-<Return>", windows W.swapMaster)
        , ("M-S-e", spawn "~/scripts/shutdown.sh")
        -- Apps
        , ("M-S-v", spawn $ myTerminal ++ " -e " ++ myEditor)
        , ("M-S-r", spawn $ myTerminal ++ " -e " ++ myFileManager)
        -- Audio
        , ("<XF86AudioMute>", spawn "amixer sset Master toggle")
        , ("<XF86AudioRaiseVolume>", spawn "amixer sset Master 10%+")
        , ("<XF86AudioLowerVolume>", spawn "amixer sset Master 10%-")
        ]

myTerminal = "kitty"
myEditor = "kak"
myFileManager = "ranger"

myLayoutHook = spacingRaw False (Border 0 10 0 10) True (Border 10 0 10 0) True $ avoidStruts (tall)
                    where tall = Tall 1 (3/100) (1/2)
