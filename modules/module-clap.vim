let s:user_init_vim = expand($HOME . '/.thinkvim.d/init.vim')
let s:user_plugins = expand($HOME . '/.thinkvim.d/plugins.yaml')
let s:user_zshrc = expand($HOME . '/.zshrc')
let s:user_tmux_conf = expand($HOME . '/.tmux.conf')

let g:clap_cache_directory = $DATA_PATH . '/clap'
let g:clap_theme = 'material_design_dark'
let g:clap_current_selection_sign= { 'text': '➤', 'texthl': "ClapCurrentSelectionSign", "linehl": "ClapCurrentSelection"}
let g:clap_layout = { 'relative': 'editor' }
let g:clap_enable_icon = 1
let g:clap_search_box_border_style = 'curve'
let g:clap_provider_grep_enable_icon = 1
let g:clap_prompt_format = '%spinner%%forerunner_status% %provider_id%: '

let g:clap_provider_personalconf = {
      \ 'source': [s:user_init_vim,s:user_plugins,s:user_zshrc,s:user_tmux_conf],
      \ 'sink': 'e',
      \ }

" A funtion to config highlight of ClapSymbol
" when the background color is opactiy
function! s:ClapSymbolHL() abort
    let s:current_bgcolor = synIDattr(hlID("Normal"), "bg")
    if s:current_bgcolor == ''
        hi ClapSymbol guibg=NONE ctermbg=NONE
    endif
endfunction

autocmd User ClapOnEnter call s:ClapSymbolHL()


