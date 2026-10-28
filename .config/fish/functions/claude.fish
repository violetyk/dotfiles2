# Claude Code のラッパー。~/Downloads 配下では起動させない。
# ダウンロードしたファイル（zip 展開物・添付・他人のリポジトリ等）は信頼できない入力であり、
# その場で Claude Code を動かすと CLAUDE.md や .claude/ による意図しない指示の読み込みが起こりうるため。
function claude --wraps claude --description 'Claude Code（~/Downloads 配下では起動しない）'
    set -l cwd (pwd -P)
    set -l downloads (realpath $HOME/Downloads)
    if test "$cwd" = "$downloads"; or string match -q -- "$downloads/*" "$cwd"
        echo "claude: ~/Downloads 配下では起動しません。解析したいファイルは ~/tmp/ 配下などにコピーしてから実行してください。" >&2
        return 1
    end
    command claude $argv
end
