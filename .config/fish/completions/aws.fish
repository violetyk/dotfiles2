# awscli は補完スクリプトを吐かず、aws_completer に都度問い合わせる方式。
# 元は config.fish に置いていたが、
#   - fish 起動のたびに登録が走る
#   - aws_completer のパスが /usr/local/bin 決め打ちで Homebrew(/opt/homebrew/bin) や Linux で壊れる
# ため、completions/ に移して PATH 解決に変更した。
command -q aws_completer; and complete -c aws -f -a '(begin; set -lx COMP_SHELL fish; set -lx COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'
