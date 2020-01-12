function mkcd
    set -l dir $argv[1]
    mkdir $dir; and cd $dir
end
