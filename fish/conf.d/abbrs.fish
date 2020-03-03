if status --is-interactive
    ## NVIM
    abbr -a -g e "nvim"
    abbr -a -g v "nvim -R"

    ## EXA
    abbr -a -g ls "exa"
    abbr -a -g l "exa -l"
    abbr -a -g la "exa -la"
    abbr -a -g t "exa --tree"
    abbr -a -g t2 "exa --tree --level 2"

    ## GIT
    abbr -a -g g "git"
    abbr -a -g gcl "git clone"
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

    ## TIME
    abbr -a -g hour "date +%T"
    abbr -a -g today "date '+%A %d %B'"

    ## CLEAR
    abbr -a -g c "clear"

    ## DU
    abbr -a -g du "du -sh"
    abbr -a -g ddu "du -h"

    ## RM
    abbr -a -g rrm "rm -Rf"
    abbr -a -g rmd "rmdir"

    ## CP
    abbr -a -g cp "cp -v"
    abbr -a -g ccp "cp -R"

    ## MV
    abbr -a -g mv "mv -v"

    ## MKDIR
    abbr -a -g mkd "mkdir -v"
    abbr -a -g mmkd "mkdir -pv"

    ## PYTHON
    abbr -a -g py "python3"

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

    ## LPASS
    abbr -a -g passcopy "lpass show --password --clip"

    ## FFSEND
    abbr -a -g upload "ffsend upload -c -e 4h"

    ## PING
    abbr -a -g internet "ping -c 5 8.8.8.8"

    ## QALC
    abbr -a -g q "qalc -t"
    abbr -a -g solve "qalc -t solve"
end
