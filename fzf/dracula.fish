set -l colorbg '#282a36'
set -l colorfg '#f8f8f2'
set -l comment '#6272a4'
set -l green '#50fa7b'
set -l cyan '#8be9fd'
set -l purple '#bd93f9'
set -l pink '#ff79c6'
set -l red '#ff5555'
set -l orange '#ffb86c'
set -l yellow '#f1fa8c'

set -x FZF_DEFAULT_OPTS "
  --height 40% --reverse
  --color=bg+:$colorbg,bg:$colorbg,spinner:$purple,hl:$purple
  --color=fg:$colorfg,header:$colorfg,info:$yellow,pointer:$purple
  --color=marker:$purple,fg+:$purple,prompt:$yellow,hl+:$green
  "
