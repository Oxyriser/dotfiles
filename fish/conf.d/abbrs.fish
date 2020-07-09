if status --is-interactive
    function __my_abbr_add
        # When the abbreviation is not alphanumeric,
        # use `string escape --style=var <abbr>`
        set -g "_fish_abbr_$argv[1]" "$argv[2..-1]"
    end

    ## NVIM
    __my_abbr_add e "nvim"
    __my_abbr_add v "nvim -R"

    ## EXA
    __my_abbr_add ls "exa"
    __my_abbr_add l "exa -l"
    __my_abbr_add la "exa -la"
    __my_abbr_add t "exa --tree"
    __my_abbr_add t2 "exa --tree --level 2"

    ## GIT
    __my_abbr_add g "git"
    __my_abbr_add ga "git add"
    __my_abbr_add gaa "git add --all"
    __my_abbr_add gcl "git clone"
    __my_abbr_add gc "git commit"
    __my_abbr_add gd "git diff"
    __my_abbr_add gds "git diff --stat"
    __my_abbr_add gda "git diff --cached"
    __my_abbr_add gl "git log --name-status"
    __my_abbr_add gp "git push"
    __my_abbr_add grs "git restore"
    __my_abbr_add gst "git status --short"
    __my_abbr_add gsw "git switch"
    __my_abbr_add gt "git tree"
    __my_abbr_add gu "git pull"

    ## TIME
    __my_abbr_add hour "date +%T"
    __my_abbr_add today "date '+%A %d %B'"

    ## CLEAR
    __my_abbr_add c "clear"

    ## DU
    __my_abbr_add du "du -sh"
    __my_abbr_add ddu "du -h"

    ## RM
    __my_abbr_add rrm "rm -Rf"
    __my_abbr_add rmd "rmdir"

    ## CP
    __my_abbr_add cp "cp -v"
    __my_abbr_add ccp "cp -R"

    ## MV
    __my_abbr_add mv "mv -v"

    ## MKDIR
    __my_abbr_add mkd "mkdir -v"
    __my_abbr_add mmkd "mkdir -pv"

    ## PYTHON
    __my_abbr_add py "python3"
    __my_abbr_add pip "pip3"

    ## VIRTUALFISH
    __my_abbr_add vfd "vf deactivate"
    __my_abbr_add vfa "vf activate"

    ## CHMOD
    __my_abbr_add cx "chmod +x"

    ## DOCKER
    __my_abbr_add d "docker"
    __my_abbr_add dc "docker-compose"

    ## BAT
    __my_abbr_add cat "bat"
    __my_abbr_add catdiff "bat --diff"

    ## CD
    __my_abbr_add _2E_2E_2E_ "cd ../.." # ...

    ## WKHTMLTOPDF
    __my_abbr_add htmlpdf "wkhtmltopdf"

    ## LPASS
    __my_abbr_add passcopy "lpass show --password --clip"

    ## FFSEND
    __my_abbr_add upload "ffsend upload -c -e 4h"

    ## PING
    __my_abbr_add internet "ping -c 5 8.8.8.8"

    ## QALC
    __my_abbr_add q "qalc -t"
end
