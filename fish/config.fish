# Get the aliases
source $HOME/.dotfiles/fish/aliases.fish

# Get the functions
source $HOME/.dotfiles/fish/functions.fish

# Set fzf theme to dracula
source $HOME/.dotfiles/fzf/fzf.fish

# Disable greeting
set fish_greeting

# Disable valid path underline
set fish_color_valid_path

# Disable vi cursor mode
function fish_vi_cursor; end

# Bindings
function fish_user_key_bindings
  # Get the vi key bindings
  fish_vi_key_bindings

  # Get the default FZF functions and bindings
  fzf_key_bindings

  # FZF bindings
  bind -M insert -e \cr
  bind -M insert \ch fzf-history-widget
  bind -M insert -e \ct
  bind -M insert \cj fzf-file-widget
  bind -M insert -e \ec
  bind -M insert \ck fzf-cd-widget
end

# VirtualFish
set -g VIRTUALFISH_DEFAULT_PYTHON "python3"
eval (python -m virtualfish)

# Go
set -gx GOPATH $HOME/Documents/go

# Default editor is nvim
set -gx EDITOR nvim

# Dracula themed man
set -gx LESS_TERMCAP_mb (set_color -o red)
set -gx LESS_TERMCAP_md (set_color -o magenta)
set -gx LESS_TERMCAP_me (set_color normal)
set -gx LESS_TERMCAP_so (set_color -r)
set -gx LESS_TERMCAP_se (set_color normal)
set -gx LESS_TERMCAP_us (set_color -o cyan)
set -gx LESS_TERMCAP_ue (set_color normal)

# Locales
set -gx LC_ALL fr_FR.UTF-8

# Brew
set -gx HOMEBREW_INSTALL_BADGE "✅" 

# Java
set -gx JAVA_HOME "/Library/Java/JavaVirtualMachines/jdk-11.0.1.jdk/Contents/Home"
