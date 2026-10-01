function csv
  nkf -w $argv | ov -H1 -C -d',' -c --align --column-rainbow --wrap=false
end
