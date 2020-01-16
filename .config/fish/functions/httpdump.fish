# Defined in - @ line 1
function httpdump --description alias\ httpdump\ sudo\ tcpdump\ -i\ en1\ -n\ -s\ 0\ -w\ -\ \|\ grep\ -a\ -o\ -E\ \"Host\\:\ .\*\|GET\ \\/.\*\"
	sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E "Host\: .*|GET \/.*" $argv;
end
