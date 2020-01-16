# Defined in - @ line 1
function localip --description 'alias localip ipconfig getifaddr en0'
	ipconfig getifaddr en0 $argv;
end
