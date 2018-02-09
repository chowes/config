#!/bin/sh

B='#00000000'  # blank
C='#ffff2222'  # clear ish
D='#ff00ffcc'  # default
T='#ee00ee00'  # text
W='#df006eee'  # wrong
V='#bb00bbbb'  # verifying

i3lock                  \
--insidevercolor=$C     \
--ringvercolor=$V       \
\
--insidewrongcolor=$C   \
--ringwrongcolor=$W     \
\
--insidecolor=$B        \
--ringcolor=$D          \
--linecolor=$B          \
--separatorcolor=$D     \
\
--screen 0              \
--blur 5                \
--veriftext=""          \
--wrongtext=""          \
--datestr=""            \
--image="${HOME}/Images/wallpaper" \
