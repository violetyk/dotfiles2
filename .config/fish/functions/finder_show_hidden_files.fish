# Defined in - @ line 1
function finder_show_hidden_files --description 'alias finder_show_hidden_files defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
	defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder $argv;
end
