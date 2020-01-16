# Defined in - @ line 1
function desktop_hide --description 'alias desktop_hide defaults write com.apple.finder CreateDesktop -bool false && killall Finder'
	defaults write com.apple.finder CreateDesktop -bool false && killall Finder $argv;
end
