# remap_keyboard_jp
Remap Japanese keyboards with XKB:
 - Henken > Return
 - Hiragana-Katakana > Delete
 - Muhenkan > Alt_L
And some comfort key remapping for vim:
 - original Alt_L as BackSpace
 - CAPS as Escape

To run at startup, add in ~/.xprofile:
```
(sleep 5 && sh <path_to_script>/add_xkb_config.sh)&
```
