function gitraw
    set -l url $argv[1]
    set -l name (basename $url)
    curl (string replace 'github' 'raw.githubusercontent' $url | string replace 'blob/' '') > $name 2>/dev/null
end
