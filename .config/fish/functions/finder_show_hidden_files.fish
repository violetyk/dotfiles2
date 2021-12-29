function finder_show_hidden_files --wraps='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder' --description 'alias finder_show_hidden_files defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
  defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder $argv; 
end
