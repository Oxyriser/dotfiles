# FZF configuration
set -gx FZF_DEFAULT_COMMAND "fd . $HOME -E $HOME/Library"
set -gx FZF_ALT_C_COMMAND "fd -t d -E Library -E Applications"
set -gx FZF_CTRL_T_COMMAND "fd -t f -E Library -E Applications"

# FZF colors
set -x FZF_DEFAULT_OPTS "
  --color=bg+:$background,bg:$background,spinner:$red,hl:$purple
  --color=fg:$foreground,header:$foreground,info:$comment,pointer:$red
  --color=marker:$red,fg+:'#ffffff',prompt:$comment,hl+:$purple
"
