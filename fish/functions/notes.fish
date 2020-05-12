function notes
  set -l name "notes"
  count $argv > /dev/null; and set name $argv[1]

  pandoc $name.md -o $name.pdf \
  --pdf-engine=xelatex \
  --table-of-contents \
  --from=markdown \
  --number-sections \
  --indented-code-classes=javascript \
  --highlight-style=monochrome \
  -V mainfont="Palatino" \
  -V documentclass=report \
  -V papersize=A5 \
  -V geometry:margin=1in

end
