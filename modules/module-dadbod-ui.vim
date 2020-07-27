let g:db_ui_show_help = 0
let g:db_ui_win_position = 'left'
let g:db_ui_use_nerd_fonts = 1
let g:db_ui_winwidth = 35
let g:db_ui_save_location = $DATA_PATH . '/db_ui_queries'

" Load db connection from .env file
" the format is DB_CONNECTION_***
if exists('g:thinkvim_load_env_db')
  let g:dbs = utils#load_db_from_env()
endif
