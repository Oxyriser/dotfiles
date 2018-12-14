# FZF configuration
set -gx FZF_DEFAULT_COMMAND "fd . $HOME -E $HOME/Library"
set -gx FZF_ALT_C_COMMAND "fd -t d -E Library -E Applications"
set -gx FZF_CTRL_T_COMMAND "fd -t f -E Library -E Applications"

# FZF colors
set -x FZF_DEFAULT_OPTS "
  --color=bg+:$background,bg:$background,spinner:$purple,hl:$purple
  --color=fg:$foreground,header:$foreground,info:$yellow,pointer:$purple
  --color=marker:$purple,fg+:$purple,prompt:$yellow,hl+:$green
"
