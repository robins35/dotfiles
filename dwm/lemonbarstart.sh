#! /bin/bash
. $(dirname $0)/panelrc

if [ $(pgrep -cx lemonbar) -gt 0 ] ; then
       printf "%s\n" "The panel is already running. Killing previous one" >&2

       kill $(pgrep -f "lemonbar -p")
fi

~/.config/dwm/lemonbar.sh | lemonbar -p -d -a 25 -F ${FG} -B ${BG} -g ${GEOMETRY} -f ${FONT1} -f ${FONT2} -f ${FONT3} -f ${FONT4} |  bash
