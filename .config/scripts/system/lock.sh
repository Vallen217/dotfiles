#!/bin/sh

BLANK='#12121f'
CLEAR='#12121f'
DEFAULT='#759eea'
TEXT='#d4d7ff'
WRONG='#e84a74'
VERIFYING='#7bdba6'

i3lock \
  --insidever-color=$CLEAR \
  --ringver-color=$VERIFYING \
  \
  --insidewrong-color=$CLEAR \
  --ringwrong-color=$WRONG \
  \
  --inside-color=$BLANK \
  --ring-color=$DEFAULT \
  --line-color=$BLANK \
  --separator-color=$DEFAULT \
  \
  --verif-color=$TEXT \
  --wrong-color=$TEXT \
  --time-color=$TEXT \
  --date-color=$TEXT \
  --layout-color=$TEXT \
  --keyhl-color=$WRONG \
  --bshl-color=$WRONG \
  \
  --screen 1 \
  --blur 7 \
  --clock \
  --indicator \
  --time-str="%H:%M:%S" \
  --date-str="%d-%m-%Y" \
