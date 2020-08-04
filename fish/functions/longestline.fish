function longestline
    awk 'BEGIN { max = 0 } { l = length; (l > max) ? max = l : pass } END { print max }' $argv[1]
end
