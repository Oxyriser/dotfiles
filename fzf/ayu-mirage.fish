set -l background '#20242F'
set -l foreground '#D9D7CE'
set -l comment '#5C6773'
set -l blue '#36A3D9'
set -l red '#FF7733'
set -l aqua '#95E6CB'

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
