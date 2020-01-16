# Defined in - @ line 1
function desktop_show --description 'alias desktop_show defaults write com.apple.finder CreateDesktop -bool true && killall Finder'
	defaults write com.apple.finder CreateDesktop -bool true && killall Finder $argv;
end
