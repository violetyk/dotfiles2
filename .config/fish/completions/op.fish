# op（1Password CLI）の補完は都度生成する（バージョンアップにそのまま追従させるため）。
# このファイルは fish が「op の補完が必要になった時」に初めて読み込むので、
# シェル起動時のコストはかからない。
command -q op; and op completion fish | source
