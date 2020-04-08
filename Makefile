SHELL = /bin/bash
nvim := $(shell which nvim)
nvim_version := '${shell $(nvim) --version}'
XDG_CACHE_HOME ?= $(HOME)/.cache

default: install

install:
	@mkdir -vp "$(XDG_CACHE_HOME)/vim/"{backup,session,swap,tags,undo}; \
	$(nvim) -V1 -es -i NONE -N -u core/packman.vim -c "try | call dein#update() | finally | echomsg '' | qall! | endtry"
