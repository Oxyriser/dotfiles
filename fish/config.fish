# Disable greeting
set fish_greeting

# Disable valid path underline
set fish_color_valid_path

# Disable vi cursor mode
function fish_vi_cursor
end

# Bindings
function fish_user_key_bindings
  # Get the vi key bindings
  fish_vi_key_bindings
  bind -M insert \et transpose-words

  # Get the default FZF functions and bindings
  fzf_key_bindings

  # FZF bindings
  bind -M insert -e \cr
  bind -M insert \ch fzf-history-widget
  bind -M insert -e \ct
  bind -M insert \cf fzf-file-widget
  bind -M insert -e \ec
  bind -M insert \co fzf-cd-widget
end

# Locales
set -gx LANG fr_FR.UTF-8

# Default editor is nvim
set -gx EDITOR nvim

# Less
set -gx LESS_TERMCAP_mb (set_color -o red)
set -gx LESS_TERMCAP_md (set_color -o blue)
set -gx LESS_TERMCAP_me (set_color normal)
set -gx LESS_TERMCAP_so (set_color -r)
set -gx LESS_TERMCAP_se (set_color normal)
set -gx LESS_TERMCAP_us (set_color green)
set -gx LESS_TERMCAP_ue (set_color normal)

# Go
set -gx GOPATH $HOME/.go

# PATH
if not set -q fish_user_paths
    set -U fish_user_paths "$HOME/.poetry/bin" \
                           "$HOME/.fnm/" \
                           "$HOME/.fnm/aliases/default/bin" \
                           "$HOME/.cargo/bin" \
                           "$GOPATH/bin" \
                           "$HOME/.local/bin" \

end
