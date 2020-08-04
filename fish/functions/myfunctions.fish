function myfunctions
    for script in (command ls "$HOME/.dotfiles/fish/functions")
        string replace '.fish' '' $script
    end
end

