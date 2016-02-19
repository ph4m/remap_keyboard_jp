#!/bin/bash

PATHSCRIPT=$(readlink -f "$0")
PATHDIR=$(dirname "${PATHSCRIPT}")
PATHCONFIG="${PATHDIR}/xkb"
echo $PATHCONFIG

setxkbmap -print | sed -e '/xkb_keycodes/s/"[[:space:]]/+local&/' \
                 | sed -e '/xkb_symbols/s/"[[:space:]]/+local&/' \
                 | xkbcomp -I${PATHCONFIG} - $DISPLAY
