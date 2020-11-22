# Defined in /tmp/fish.G7CQdb/tm.fish @ line 2
function tm
    if count $argv > /dev/null
        tmux $argv
    else
        exec tmux -2 new -A -s WORK
    end
end
