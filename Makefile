nvim ?= nvim
XDG_CACHE_HOME ?= $(HOME)/.cache

default: install

install:
	@mkdir -vp "$(XDG_CACHE_HOME)/vim/"{backup,session,swap,tags,undo}; \
	$(nvim)  -V1 -es -i NONE -N -u core/packman.vim -c "try | call dein#update() | call dein#recache_runtimepath() | finally | echomsg '' | qall! | endtry"
