function notes
  set -l name "notes"
  count $argv > /dev/null; and set name $argv[1]

  wkhtmltopdf (pandoc --from=markdown+raw_html+markdown_in_html_blocks \
                 --template=github.html5 \
                 $name.md \
              | psub -s .html) \
              $name.pdf
end
