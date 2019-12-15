if status --is-interactive
    ## NVIM
    abbr -a -g e "nvim"
    abbr -a -g v "nvim -R"

    ## EXA
    abbr -a -g ls "exa"
    abbr -a -g l "exa -l"
    abbr -a -g la "exa -la"
    abbr -a -g t "exa --tree"
    abbr -a -g t1 "exa --tree --level 1"

    ## GIT
    abbr -a -g g "git"
    abbr -a -g gd "git diff"
    abbr -a -g gds "git diff --stat"
    abbr -a -g gu "git pull"
    abbr -a -g gst "git status"
    abbr -a -g gsw "git switch"
    abbr -a -g grs "git restore"
    abbr -a -g ga "git add"
    abbr -a -g gaa "git add --all"
    abbr -a -g gc "git commit"
    abbr -a -g gcm "git commit -m"
    abbr -a -g gamend "git commit --all --amend --no-edit"
    abbr -a -g gp "git push"
    abbr -a -g gl "git log --name-status"
    abbr -a -g gt "git log --oneline --decorate --all --graph"

    ## CLEAR
    abbr -a -g c "clear"

    ## DU
    abbr -a -g du "du -sh"
    abbr -a -g ddu "du -h"

    ## RM
    abbr -a -g rrm "rm -Rf"

    ## CD
    abbr -a -g desk "cd $HOME/Desktop"

    ## CP
    abbr -a -g cp "cp -v"
    abbr -a -g ccp "cp -R"

    ## MV
    abbr -a -g mv "mv -v"

    ## MKDIR
    abbr -a -g mmkdir "mkdir -p"

    ## PYTHON
    abbr -a -g py "python3"

    ## CRYSTAL
    abbr -a -g cr "crystal"

    ## CHMOD
    abbr -a -g cx "chmod +x"

    ## DOCKER
    abbr -a -g d "docker"
    abbr -a -g dc "docker-compose"

    ## BAT
    abbr -a -g cat "bat"

    ## CD
    abbr -a -g ... "cd ../.."

    ## WKHTMLTOPDF
    abbr -a -g htmlpdf "wkhtmltopdf"
end
