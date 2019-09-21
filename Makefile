SHELL = /bin/bash
nvim ?= nvim
XDG_CACHE_HOME ?= $(HOME)/.cache

default: install

install:
	@mkdir -vp "$(XDG_CACHE_HOME)/vim/"{backup,session,swap,tags,undo}; \
	$(nvim) -V1 -es -i NONE -N -u core/vimrc -c "try | call dein#update() | finally | echomsg '' | qall! | endtry"

update:
	@git pull --ff --ff-only; \
	$(nvim) -V1 -es -i NONE -N -u config/init.vim -c "try | call dein#clear_state() | call dein#update() | finally | qall! | endtry"

upgrade: update

uninstall:
	rm -rf "$(XDG_CACHE_HOME)/vim"
