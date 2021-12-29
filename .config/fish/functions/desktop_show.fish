function desktop_show --wraps='defaults write com.apple.finder CreateDesktop -bool true && killall Finder' --description 'alias desktop_show defaults write com.apple.finder CreateDesktop -bool true && killall Finder'
  defaults write com.apple.finder CreateDesktop -bool true && killall Finder $argv; 
end
