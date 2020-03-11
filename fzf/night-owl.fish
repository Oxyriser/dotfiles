# Night Owl
set -l foreground '#d6deeb'
set -l background '#011627'
set -l comment '#637777'
set -l blue '#82aaff'
set -l red '#ff5874'
set -l aqua '#7fdbca'

# FZF configuration
set -gx FZF_DEFAULT_COMMAND "fd . $HOME -E $HOME/Library"
set -gx FZF_ALT_C_COMMAND "fd -t d -E Library -E Applications"
set -gx FZF_CTRL_T_COMMAND "fd -t f -E Library -E Applications"

# FZF colors
set -gx FZF_DEFAULT_OPTS "
  --height 40% --reverse
  --color=bg+:$background,bg:$background,spinner:$red,hl:$blue
  --color=fg:$foreground,header:$foreground,info:$aqua,pointer:$red
  --color=marker:$red,fg+:$foreground,prompt:$aqua,hl+:$blue
"
