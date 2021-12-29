function sniff --wraps=sudo\ ngrep\ -d\ \'en1\'\ -t\ \'^\(GET\|POST\)\ \'\ \'tcp\ and\ port\ 80\' --description alias\ sniff\ sudo\ ngrep\ -d\ \'en1\'\ -t\ \'^\(GET\|POST\)\ \'\ \'tcp\ and\ port\ 80\'
  sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80' $argv; 
end
