function csv
  # set -l c (nkf -g $argv)
  # if test (string match -r '^UTF-8' $c)
    # column -s, -t < $argv | less -#2 -N -S
  # else
    nkf -w $argv | column -s, -t | less -#2 -N -S
  # end
end
