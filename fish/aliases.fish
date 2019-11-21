if status --is-interactive
    ## NVIM
    abbr -a -g e "nvim"
    abbr -a -g v "nvim -R"

    ## EXA
    abbr -a -g ls "exa"
    abbr -a -g l "exa -l"
    abbr -a -g la "exa -la"
    abbr -a -g t "exa --tree"

    ## GIT
    abbr -a -g g "git"
    abbr -a -g gd "git diff"
    abbr -a -g gds "git diff --stat"
    abbr -a -g gu "git pull"
    abbr -a -g gst "git status"
    # abbr -a -g gck "git checkout"
    abbr -a -g gsw "git switch"
    abbr -a -g grs "git restore"
    abbr -a -g ga "git add"
    abbr -a -g gaa "git add --all"
    abbr -a -g gc "git commit"
    abbr -a -g gc "git commit -m"
    abbr -a -g gca "git commit --all"
    abbr -a -g gp "git push"
    abbr -a -g gm "git log --name-status"
    abbr -a -g gt "git log --oneline --decorate --all --graph"

    ## CLEAR
    abbr -a -g c "clear"

    ## DU
    abbr -a -g du "du -h"
    abbr -a -g ddu "du -sh"

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
    abbr -a -g python "python3"
    abbr -a -g py "python3"
    abbr -a -g ipy "ipython3"
    abbr -a -g pip "pip3"

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
end
