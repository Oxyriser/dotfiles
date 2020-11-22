## FZF configuration
set -gx FZF_DEFAULT_COMMAND "fd . $HOME"
set -gx FZF_ALT_C_COMMAND "fd -t d . \$dir"
set -gx FZF_CTRL_T_COMMAND "fd -t f . \$dir"


## Gruvbox

set -l foreground '#EBDBB2'
set -l background '#1D2021'
set -l comment '#928374'
set -l blue '#83A598'
set -l red '#FB4934'
set -l aqua '#8EC07C'

set -gx FZF_DEFAULT_OPTS "
  --height 40% --reverse
  --color=bg+:$background,bg:$background,spinner:$red,hl:$blue
  --color=fg:$foreground,header:$foreground,info:$aqua,pointer:$red
  --color=marker:$red,fg+:$foreground,prompt:$aqua,hl+:$blue
"


## Dracula
#
# set -l colorbg '#282a36'
# set -l colorfg '#f8f8f2'
# set -l comment '#6272a4'
# set -l green '#50fa7b'
# set -l cyan '#8be9fd'
# set -l purple '#bd93f9'
# set -l pink '#ff79c6'
# set -l red '#ff5555'
# set -l orange '#ffb86c'
# set -l yellow '#f1fa8c'
#
# set -gx FZF_DEFAULT_OPTS "
#   --height 40% --reverse
#   --color=bg+:$colorbg,bg:$colorbg,spinner:$purple,hl:$purple
#   --color=fg:$colorfg,header:$colorfg,info:$yellow,pointer:$purple
#   --color=marker:$purple,fg+:$purple,prompt:$yellow,hl+:$green
# "


## Night Owl
#
# set -l foreground '#d6deeb'
# set -l background '#011627'
# set -l comment '#637777'
# set -l blue '#82aaff'
# set -l red '#ff5874'
# set -l aqua '#7fdbca'
#
# set -gx FZF_DEFAULT_OPTS "
#   --height 40% --reverse
#   --color=bg+:$background,bg:$background,spinner:$red,hl:$blue
#   --color=fg:$foreground,header:$foreground,info:$aqua,pointer:$red
#   --color=marker:$red,fg+:$foreground,prompt:$aqua,hl+:$blue
# "
