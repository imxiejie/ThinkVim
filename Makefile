SHELL = /bin/bash
XDG_CACHE_HOME ?= $(HOME)/.cache

default: install

install:
	@mkdir -vp "$(XDG_CACHE_HOME)/vim/"{backup,session,swap,tags,undo}; \
	$(nvim) --cmd 'set t_ti= t_te= nomore' -N -U NONE -i NONE \
	-c "try | call dein#update() | call dein#recache_runtimepath() | finally | :messages | call confirm('Press any key to quit') | qall! | endtry"
