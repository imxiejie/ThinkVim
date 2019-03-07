" dein configurations.

let g:dein#install_progress_type = 'title'
let g:dein#enable_notification = 1
let g:dein#install_log_filename = '~/.tmp/dein.log'

let $CACHE = expand('~/.cache')
let s:path = expand('$CACHE/dein')
if !dein#load_state(s:path)
  finish
endif

call dein#begin(s:path, expand('<sfile>'))
let s:toml_dir = expand($CONFIG.'/nvim/rc/dein')
let s:toml =s:toml_dir.'/dein.toml'
let s:lazy_toml = s:toml_dir.'/deinlazy.toml'

call dein#load_toml(s:toml, {'lazy': 0})
call dein#load_toml(s:lazy_toml, {'lazy' : 1})


call dein#end()
call dein#save_state()

if dein#check_install()
  " Installation check.
  call dein#install()
endif
