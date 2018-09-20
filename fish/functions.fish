function play
  mpv --really-quiet "$argv" &
  disown
end

function macOS
  vmware-hgfsclient
  vmhgfs-fuse -o allow_other -o auto_unmount .host:/geographer /home/geographer/macOS
end

function crepo
  blih repository create $argv[1]
  blih repository setacl $argv[1] ramassage-tek r
  echo (blih repository getacl $argv[1])
end

function drepo
  blih repository delete $argv[1]
end

function grepo
  blih repository getacl $argv[1]
end

function srepo
  blih repository setacl $argv[1] $argv[2] $argv[3]
end
