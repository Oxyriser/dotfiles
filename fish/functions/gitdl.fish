function gitdl
    # To grab from another branch that master you need to replace
    # '/tree/<branch>/' with '/branches/<branch>'. It only works
    # with a folder though.
    set -l url (string replace -f -r '/(blob|tree)/(master|main)/' '/trunk/' $argv[1])

    if string length -q $url
        svn export $url
    else
        echo 'gitdl: invalid url'
    end
end
