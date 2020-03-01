# Defined in - @ line 1
function finder_hide_hidden_files --wraps='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder' --description 'alias finder_hide_hidden_files defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'
  defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder $argv;
end
