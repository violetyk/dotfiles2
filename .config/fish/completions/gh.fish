# gh の補完は都度生成する（バージョンアップにそのまま追従させるため）。
# このファイルは fish が「gh の補完が必要になった時」に初めて読み込むので、
# シェル起動時のコストはかからない。
command -q gh; and gh completion -s fish | source
