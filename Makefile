SHELL = /bin/bash
nvim := $(shell which nvim)
nvim_version := '${shell $(nvim) --version}'
XDG_CACHE_HOME ?= $(HOME)/.cache

default: install

# TODO: Instll coc extensions ? there has somethins wrong,Need Update!
install:
	@mkdir -vp "$(XDG_CACHE_HOME)/vim/"{backup,session,swap,tags,undo}; \
	$(nvim) -V1 -es -i NONE -N -u init.vim -c "try | call coc#util#update_extensions() | finally | echomsg '' | qall! | endtry"
