#!/usr/bin/fish

set -l mb (set_color --bold red ) # blink
set -l md (set_color --bold blue) # bold
set -l me (set_color normal)      # stop bold, blink and underline
set -l so (set_color --reverse)   # standout
set -l se (set_color normal)      # stop standout
set -l us (set_color green)       # start underline
set -l ue (set_color normal)      # stop underline

echo "#env
LESS = -iQR -Ps  %lb?L/%L 
LESSHISTFILE = -
EDITOR = nvim
SHELL = fish
LESS_TERMCAP_mb=$mb
LESS_TERMCAP_md=$md
LESS_TERMCAP_me=$me
LESS_TERMCAP_so=$so
LESS_TERMCAP_se=$se
LESS_TERMCAP_us=$us
LESS_TERMCAP_ue=$ue" | lesskey --output=$HOME/.config/less/less -
