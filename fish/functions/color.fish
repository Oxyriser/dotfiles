function color
  for color in $argv
      set_color -b $color; echo -sn "   "
    end
end

