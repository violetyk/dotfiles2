# Defined in - @ line 1
function ips --wraps=ifconfig\ -a\ \|\ grep\ -o\ \'inet6\\\?\ \\\(addr:\\\)\\\?\\s\\\?\\\(\\\(\\\(\[0-9\]\\+\\.\\\)\\\{3\\\}\[0-9\]\\+\\\)\\\|\[a-fA-F0-9:\]\\+\\\)\'\ \|\ awk\ \'\{\ sub\(/inet6\?\ \(addr:\)\?\ \?/,\ \"\"\)\;\ print\ \}\' --description alias\ ips\ ifconfig\ -a\ \|\ grep\ -o\ \'inet6\\\?\ \\\(addr:\\\)\\\?\\s\\\?\\\(\\\(\\\(\[0-9\]\\+\\.\\\)\\\{3\\\}\[0-9\]\\+\\\)\\\|\[a-fA-F0-9:\]\\+\\\)\'\ \|\ awk\ \'\{\ sub\(/inet6\?\ \(addr:\)\?\ \?/,\ \"\"\)\;\ print\ \}\'
  ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, ""); print }' $argv;
end
