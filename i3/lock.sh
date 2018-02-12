#!/bin/sh

B='#00000000'  # blank
D='#ff00ffcc'  # default
T='#ee00ee00'  # text
W='#dd0048ff'  # wrong
V='#06eefaff'  # verifying

i3lock                  \
--insidevercolor=$B     \
--ringvercolor=$V       \
\
--insidewrongcolor=$B   \
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
