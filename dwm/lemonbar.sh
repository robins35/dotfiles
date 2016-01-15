#! /bin/bash
. $(dirname $0)/panelrc

makebar() {
  MAX=20
  CUR=$(($1 / 5))

  for v in $(seq 0 $((MAX - 1))); do
    VOL_PER=$(echo "(($v * 5) + 5) / 2.565" | bc)
    if [[ "$v" -lt "$CUR" ]]; then
      bar="${bar}%{A:amixer set Master ${VOL_PER}:}${yellow}${volbar}%{A}"
    else
      bar="${bar}%{A:amixer set Master ${VOL_PER}:}${light4}${volbar}%{A}"
    fi
  done

  echo "${bar}"
}

volume() {
  echo "$(awk '/dB/ { gsub(/[\[\]]/,""); print $4}' <(amixer get Master))" | sed 's/%//'
}

volume_bar() {
  if [ $(volume) -eq 0 ]; then
    VOL_ICON="%{A:amixer set Master 39:}\uf026%{A}"
  else
    VOL_ICON="%{A:amixer set Master 0:}\uf028%{A}"
  fi
  echo "${yellow}${VOL_ICON} ${light2}$(makebar $(volume))"
}

calendar() {
  ICON="\uf073"
  echo "${green}$ICON $(date '+%a %d')"
}

clock() {
  ICON="\uf017"
  echo $ICON $(date '+%I:%M %P')
}

system_stats() {
  CPU1="$(grep 'cpu0 ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage }' | awk -F. '{print $1}')"
  CPU2="$(grep 'cpu1 ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage }' | awk -F. '{print $1}')"
  MEM="$(free | grep Mem | awk '{print ($3/$2) * 100}' | awk -F. '{print $1}')"

  CPU_ICON="\uf108"
  MEM_ICON="\uf0a0"

  echo "${yellow}${CPU_ICON} $CPU1%  ${CPU_ICON} $CPU2%  ${blue}${MEM_ICON} $MEM%"
}

cmus_info() {
  ICON="\uf025"
  echo "${fg}$ICON %{T2}$(cmusinfo)%{T-}"
}

test_info() {
  echo "I am: $(whoami) with shell: ${SHELL} and path: ${PATH}"
}

sep() {
  echo "         "
}

while :; do
  echo -e "%{l}  $(system_stats)$(sep)$(sep)$(sep)$(cmus_info)%{l}%{r}$(volume_bar) $(sep) $(calendar)   ${light2}$(clock) %{r}"
  sleep 0.2s
done
