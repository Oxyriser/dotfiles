# Get the aliases
source $HOME/.dotfiles/fish/aliases.fish

# Get the functions
source $HOME/.dotfiles/fish/functions.fish

# Disable greeting
set fish_greeting

# Disable valid path underline
set fish_color_valid_path

# Disable vi cursor mode
function fish_vi_cursor; end

# Bindings
function fish_user_key_bindings
  fish_vi_key_bindings

  # Still enable ctrl+f in Vim mode
  for mode in insert default visual
    bind -M $mode \cf forward-char
  end

  # Get the default FZF functions and bindings
  fzf_key_bindings

  # Set the custom bindings
  bind -e \cr
  bind \ch fzf-history-widget
  bind -e \ct
  bind \cj fzf-file-widget
  bind -e \ec
  bind \ck fzf-cd-widget

  # Vim mode compatibility
  if bind -M insert > /dev/null 2>&1
    bind -M insert -e \cr
    bind -M insert \ch fzf-history-widget
    bind -M insert -e \ct
    bind -M insert \cj fzf-file-widget
    bind -M insert -e \ec
    bind -M insert \ck fzf-cd-widget
  end
end

# FZF configuration
set -gx FZF_ALT_C_COMMAND "fd -t d -E Library -E Applications"
set -gx FZF_CTRL_T_COMMAND "fd -t f -E Library -E Applications"

# Default editor is nvim
set -gx EDITOR nvim

# Dracula themed man
set -gx LESS_TERMCAP_mb (set_color -o -u FF5555)
set -gx LESS_TERMCAP_md (set_color -o BD93F9)
set -gx LESS_TERMCAP_me (set_color normal)
set -gx LESS_TERMCAP_so (set_color -b 44475A)
set -gx LESS_TERMCAP_se (set_color normal)
set -gx LESS_TERMCAP_us (set_color -o 50FA7B)
set -gx LESS_TERMCAP_ue (set_color normal)

# Personal infos
# Used in vim snippets
set -gx FULLNAME "Theo Danneels"

# Locales
set -gx LC_CTYPE fr_FR.UTF-8
set -gx LC_ALL fr_FR.UTF-8

# Bat
set -gx BAT_THEME "Dracula"

# Brew
set -gx HOMEBREW_INSTALL_BADGE "✅" 

# Java
set -gx JAVA_HOME "/Library/Java/JavaVirtualMachines/jdk-11.0.1.jdk/Contents/Home"
