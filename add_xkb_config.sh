#!/bin/sh

PATHSCRIPT=$(readlink -f "$0")
PATHDIR=$(dirname "${PATHSCRIPT}")
PATHCONFIG="${PATHDIR}/xkb"

setxkbmap -print | sed -e '/xkb_keycodes/s/"[[:space:]]/+local&/' \
                 | sed -e '/xkb_symbols/s/"[[:space:]]/+local&/' \
                 | xkbcomp -I${PATHCONFIG} - $DISPLAY

exit 0
