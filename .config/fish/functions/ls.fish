function ls
  if type -q gls
    gls --color=auto $argv
  else
    ls $argv
  end
end
