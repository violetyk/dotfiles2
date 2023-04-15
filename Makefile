RUBY_VERSION := 2.7.0

DOTFILES_EXCLUDES := .DS_Store .git
DOTFILES_TARGET   := $(wildcard .??*)
DOTFILES_DIR      := $(PWD)
DOTFILES_FILES    := $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))
HOME_DIRS         := bin tmp swap undo backup tags src .config.local
TMUX_PLUGIN_DIR   := $(HOME)/.tmux/plugins/tpm
TMP_DIR           := $(shell mktemp -d)

.PHONY: help
.DEFAULT_GOAL := help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: home
home: ## ホームディレクトリへの配置
	@$(foreach val, $(DOTFILES_FILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	@$(foreach val, $(HOME_DIRS), mkdir -pv $(HOME)/$(val);)

.PHONY: brew
brew: ## Homebrewをインストールしてbrew bundle
	if ! which brew > /dev/null 2>&1; then\
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";\
	fi
	brew bundle

.PHONY: fish
fish: ## fishの設定
	fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"
	fish -c fisher update
	fish -c fish_update_completions

.PHONY: tmux
tmux: ## tmuxの設定
	if [ ! -d $(TMUX_PLUGIN_DIR) ]; then\
		git clone https://github.com/tmux-plugins/tpm $(TMUX_PLUGIN_DIR);\
	fi
	cd $(TMUX_PLUGIN_DIR)
	git pull
	$(HOMEBREW_PREFIX)/opt/ncurses/bin/infocmp tmux-256color > $(TMP_DIR)/tmux-256color.info
	tic -xe  tmux-256color $(TMP_DIR)/tmux-256color.info
	infocmp tmux-256color

.PHONY: dircolors
dircolors: ## .dircolorsの更新
	curl -sL https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.256dark > .dircolors
