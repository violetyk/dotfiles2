function kill_chrome --wraps=ps\ ux\ \|\ grep\ \'\[C\]hrome\ Helper\ --type=renderer\'\ \|\ grep\ -v\ extension-process\ \|\ tr\ -s\ \'\ \'\ \|\ cut\ -d\ \'\ \'\ -f2\ \|\ xargs\ kill --description alias\ kill_chrome\ ps\ ux\ \|\ grep\ \'\[C\]hrome\ Helper\ --type=renderer\'\ \|\ grep\ -v\ extension-process\ \|\ tr\ -s\ \'\ \'\ \|\ cut\ -d\ \'\ \'\ -f2\ \|\ xargs\ kill
  ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill $argv; 
end
