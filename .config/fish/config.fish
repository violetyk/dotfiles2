set -x LANG ja_JP.UTF-8
set -x EDITOR vim
set -x VISUAL vim
set -x XDG_CONFIG_DIRS $HOME/.config.local:$HOME/.config

set -g fish_local_path $HOME/.config.local/fish
set -g fisher_path $HOME/.config.local/fisher

set fish_function_path \
  $fish_function_path[1] \
  $fish_local_path/functions \
  $fisher_path/functions \
  $fish_function_path[2..-1]

set fish_complete_path \
  $fish_complete_path[1] \
  $fish_local_path/completions \
  $fisher_path/completions \
  $fish_complete_path[2..-1]

for file in $fisher_path/conf.d/*.fish
    builtin source $file 2> /dev/null
end

set OS (uname -s)

# set fish_user_paths
if test $OS = "Darwin"
  fish_add_path /opt/homebrew/bin
  fish_add_path /opt/homebrew/sbin
else
  fish_add_path /usr/local/bin
  fish_add_path /usr/local/sbin
end

test -d $HOME/bin; and fish_add_path $HOME/bin
test -d $HOME/go/bin; and fish_add_path $HOME/go/bin

# add local for local setting to ~/.config.local/fish/conf.d/local.fish
if test -f $fish_local_path/conf.d/local.fish
   and test -r $fish_local_path/conf.d/local.fish
   source $fish_local_path/conf.d/local.fish
end

# op
if test -f $HOME/.config/op/plugins.sh
   and test -r $HOME/.config/op/plugins.sh
   source $HOME/.config/op/plugins.sh
end

# rbenv
type -q rbenv; and rbenv init - | source

# pyenv
type -q pyenv; and pyenv init - | source

# nodenv
type -q nodenv; and nodenv init - | source

# direnv
if type -q direnv
  direnv hook fish | source
  set -g direnv_fish_mode eval_on_arrow    # trigger direnv at prompt, and on every arrow-based directory change (default)
  # set -g direnv_fish_mode eval_after_arrow # trigger direnv at prompt, and only after arrow-based directory changes before executing command
  # set -g direnv_fish_mode disable_arrow    # trigger direnv at prompt only, this is similar functionality to the original behavior
end

# dircolors
if type -q gdircolors
   and test -f ~/.dircolors
   and test -r ~/.dircolors
   eval (gdircolors -c ~/.dircolors)
end

# awscli
if type -q aws_completer
  complete -c aws -f -a '(begin; set -lx COMP_SHELL fish; set -lx COMP_LINE (commandline); /usr/local/bin/aws_completer | sed \'s/ $//\'; end)'
end

function fish_user_key_bindings
  bind \cs peco_select_ghq_look
  bind \cr peco_select_history
  bind \cb peco_select_git_checkout
  bind \cj peco_select_fd_edit
  bind \cg peco_select_fd_cd
end

if status --is-interactive
  set -g fish_user_abbreviations
  abbr --add 'rm' 'rm -i'
  abbr --add 'cp' 'cp -i'
  abbr --add 'lll' 'ls -alh'
  abbr --add 'h' 'history'
  abbr --add 'j' 'jobs'

  # ag
  abbr --add 'ag' 'ag -S --stats'
  abbr --add 'agh' 'ag --hidden'

  # wget
  abbr --add 'wget' 'wget --no-check-certificate'
  abbr --add 'grep' 'grep --color'

  # vmstat
  abbr --add 'vmstat' 'vmstat -S M'

  # date
  abbr --add 'ymd' "date +'%Y%m%d'"
  abbr --add 'ymdhis' "date +'%Y%m%d%H%I%S'"

  # mysql
  abbr --add 'mysql' "env EDITOR=\"vim -c ':set ft=sql'\" mysql --auto-rehash --pager='less -S'"

  # ssh
  abbr --add 'ssh' 'env TERM=xterm-256color ssh'

  # trim and pbcopy
  abbr --add 'trim_pbcopy' "tr -d '\n' | pbcopy"

  # recursively delete .DS_Store
  abbr --add 'cleanup' "find . -type f -name '*.DS_Store' -ls -delete"

  # reload
  abbr --add 'reload' 'exec $SHELL -l'
end


# ip
# alias ip 'dig +short myip.opendns.com @resolver1.opendns.com'
# funcsave ip -q -d $fish_local_path/functions

# alias localip 'ipconfig getifaddr en0'
# funcsave localip -q -d $fish_local_path/functions

# alias ips "ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
# funcsave ips -q -d $fish_local_path/functions

# view HTTP traffic
# alias sniff "sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
# funcsave sniff -q -d $fish_local_path/functions

# alias httpdump "sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
# funcsave httpdump -q -d $fish_local_path/functions

# mac
if test $OS = "Darwin"
  alias finder_show_hidden_files "defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
  alias finder_hide_hidden_files "defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
  alias desktop_hide "defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
  alias desktop_show "defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

  type -q gls; and alias ls 'gls --color=auto $argv'
  type -q ggrep; and alias grep 'ggrep'
  type -q gxargs; and alias xargs 'gxargs'
end

# starship
type -q starship; and starship init fish | source
