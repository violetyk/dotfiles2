function ccc-tab --description 'herdr の新規タブ（同じ cwd）で ccc を起動する。引数は Claude Code の初回プロンプト'
    argparse 'n/no-focus' 'l/label=' -- $argv
    or return 2

    if test "$HERDR_ENV" != 1
        echo "ccc-tab: herdr の中で実行してください" >&2
        return 1
    end

    # 既定はディレクトリ名に ccc: を付ける。--label 指定時はそのまま使う
    set -l label "ccc:"(basename -- $PWD)
    set -q _flag_label; and set label $_flag_label

    set -l focus --focus
    set -q _flag_no_focus; and set focus --no-focus

    set -l out (herdr tab create --workspace $HERDR_WORKSPACE_ID --cwd $PWD --label $label $focus)
    or return 1
    set -l pane (printf '%s\n' $out | jq -r .result.root_pane.pane_id)

    # fish の初期化前に送ると Enter(ctrl+j) がキーバインド（peco）に食われるため、プロンプトを待つ
    herdr pane wait-output $pane --match '❯' --timeout 15000 >/dev/null
    or begin
        echo "ccc-tab: $pane にプロンプトが出ませんでした" >&2
        return 1
    end

    set -l cmd ccc
    if test (count $argv) -gt 0
        set cmd "ccc "(string escape -- "$argv")
    end
    herdr pane run $pane $cmd >/dev/null
    or return 1
    echo $pane
end
