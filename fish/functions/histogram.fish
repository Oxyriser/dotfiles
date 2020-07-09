function histogram
    test (count $argv) -eq 1
    and set -l padding $argv[1]
    or set -l padding 20

    awk -v padding=$padding 'FNR==1 {max=$1} {nb=$1; $1=""; printf "%-"padding"s ", $0; for (i=0;i<int(nb/max*40);i++) printf "*"; printf "\n"}'
end
