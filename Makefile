nvim ?= nvim
XDG_CACHE_HOME ?= $(HOME)/.cache

default: install

install:
	@mkdir -vp "$(XDG_CACHE_HOME)/vim/"{backup,session,swap,tags,undo}; \
	$(nvim)  -V1 -es -i NONE -N --noplugin -u core/packman.vim -c "try | call dein#update() | call dein#recache_runtimepath() | finally | echomsg '' | qall! | endtry"

create-dirs:
	@mkdir -vp "$(XDG_CACHE_HOME)/vim/"{backup,session,swap,tags,undo}

update-thinkvim:
	@git pull --ff --ff-only

update-plugins:
	$(vim) -V1 -es -i NONE -N --noplugin -u config/init.vim -c "try | call dein#clear_state() | call dein#update() | finally | qall! | endtry"

update: update-thinkvim update-plugins

upgrade: update
