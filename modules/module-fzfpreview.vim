
" fzf-preview
" Add fzf quit mapping
let g:fzf_preview_quit_map = 1

" Use floating window (for neovim)
let g:fzf_preview_use_floating_window = 1

" floating window size ratio
let g:fzf_preview_floating_window_rate = 0.7

" floating window winblend value
let g:fzf_preview_floating_window_winblend = 15

" Commands used for fzf preview.
" The file name selected by fzf becomes {}
"let g:fzf_preview_command = 'head -100 {-1}'                       " Not installed bat
"let g:fzf_preview_command = 'bat --color=always --style=grid {-1}' " Installed bat
let g:fzf_preview_command = 'bat --color=always --style=grid --theme=ansi-dark {-1}'

" g:fzf_binary_preview_command is executed if this command succeeds, and g:fzf_preview_command is executed if it fails
let g:fzf_preview_if_binary_command = '[[ "$(file --mime {})" =~ binary ]]'
