RUBY_VERSION := 2.7.0

DOTFILES_EXCLUDES := .DS_Store .git
DOTFILES_TARGET   := $(wildcard .??*)
DOTFILES_DIR      := $(PWD)
DOTFILES_FILES    := $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))
HOME_DIRS         := bin tmp swap undo backup tags src .config.local
ROLE ?= *

deploy:
	@$(foreach val, $(DOTFILES_FILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	@$(foreach val, $(HOME_DIRS), mkdir -pv $(HOME)/$(val);)


install:
	@$(foreach val, $(wildcard ./etc/init/$(ROLE).sh), bash $(val);)


update:
	@$(foreach val, $(wildcard ./etc/init/$(ROLE).sh), bash $(val);)
